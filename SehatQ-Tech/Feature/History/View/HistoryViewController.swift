//
//  HistoryViewController.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit
import RxSwift
import RxCocoa

class HistoryViewController: BaseViewController {
    
    private let viewModel: HistoryViewModel
    private let router: HistoryRouter
    private let disposeBag = DisposeBag()
    
    init(
        viewModel: HistoryViewModel,
        router: HistoryRouter
    ) {
        self.viewModel = viewModel
        self.router = router
        super.init(nibName: "HistoryViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var tableView: UITableView!

    var withBackButton = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHistory()
        setupSelectedOnTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigationBar(leftButton: true, titleString: "Purchase History")
        viewModel.getHistory()
    }
    
    private func setupView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(ProductListRightTitleTableViewCell.nib(), forCellReuseIdentifier: ProductListRightTitleTableViewCell.reuseIdentifier)
    }
    
    private func setupHistory() {
        viewModel.haveProductPubSub.bind { (success) in
            if success {
                
            } else {
                
            }
        }.disposed(by: disposeBag)
        
        viewModel.productPubSub.bind(to: tableView.rx.items(cellIdentifier: ProductListRightTitleTableViewCell.reuseIdentifier, cellType: ProductListRightTitleTableViewCell.self)){ (row, product, cell) in
            if let url = URL.init(string: product.imageUrl ?? "") {
                cell.titleImageView?.load(url: url)
            }
            cell.titleLabel.text = product.title
            cell.subtitleLabel.text = product.price
        }.disposed(by: disposeBag)
    }
    
    private func setupSelectedOnTableView() {
        tableView.rx.modelSelected(Product.self).subscribe { [weak self] product in
            guard let weakSelf = self else {return}
            guard let product = product.element else {
                return
            }
            
            weakSelf.router.navToDetailProduct(product: product)
        }.disposed(by: disposeBag)
    }
    
    override func leftBarButtonDidPush() {
        navigationController?.popViewController(animated: true)
    }
}
