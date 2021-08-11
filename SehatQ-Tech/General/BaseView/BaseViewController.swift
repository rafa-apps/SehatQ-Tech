//
//  BaseViewController.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupNavigationBar(leftButton: Bool? = false, rightButton: Bool? = false, titleString: String){
        
        let titleLabel = UILabel(frame: .zero)
        titleLabel.text = titleString
        titleLabel.textColor = .white
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.sizeToFit()
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.0, green: 94.0/255.0, blue: 94.0/255.0, alpha: 1.0)
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.isHidden = false
        
        navigationController?.visibleViewController?.navigationItem.leftBarButtonItem = nil
        if leftButton ?? false {
            let leftImage = UIImage(named: "back")
            let leftBarButton = UIBarButtonItem(image: leftImage, style: .plain, target: self, action: #selector(leftBarButtonDidPush))
            leftBarButton.tintColor = .white
            navigationController?.visibleViewController?.navigationItem.leftBarButtonItem = leftBarButton
        }
        
        navigationController?.visibleViewController?.navigationItem.rightBarButtonItem = nil
        if rightButton ?? false {
            let rightImage = UIImage(named: "")
            let rightBarButton = UIBarButtonItem(image: rightImage, style: .plain, target: self, action: #selector(rightBarButtonDidPush))
            rightBarButton.tintColor = .white
            navigationController?.visibleViewController?.navigationItem.rightBarButtonItem = rightBarButton
        }
        
        navigationController?.visibleViewController?.navigationItem.titleView = titleLabel
    }
    
    @objc func leftBarButtonDidPush() {}
    @objc func rightBarButtonDidPush() {}
    
}
