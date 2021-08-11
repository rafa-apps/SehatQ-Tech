//
//  ProfileViewController.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit
import RxSwift
import RxCocoa

class ProfileViewController: BaseViewController {

    private let viewModel: ProfileViewModel
    private let router: ProfileRouter
    private let disposeBag = DisposeBag()
    
    init(
        viewModel: ProfileViewModel,
        router: ProfileRouter
    ) {
        self.viewModel = viewModel
        self.router = router
        super.init(nibName: "ProfileViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var logoutButton: UIButton!

    var withBackButton = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didUserLogout(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
        UserDefaults.standard.synchronize()
        let window = UIApplication.shared.windows.first
        let loginView = LoginBuilder.viewController()
        let navigationController = UINavigationController(rootViewController: loginView)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    @IBAction func didProductHistory(_ sender: UIButton) {
        router.navToPurchaseHistory()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigationBar(leftButton: true, titleString: "Purchase History")
    }

    override func leftBarButtonDidPush() {
        navigationController?.popViewController(animated: true)
    }
}
