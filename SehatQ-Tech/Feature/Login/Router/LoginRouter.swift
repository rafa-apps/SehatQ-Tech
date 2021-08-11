//
//  LoginRouter.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit

class LoginRouter {
    weak var viewController: LoginViewController?
    
    func navToHome(){
        let navigationController = UINavigationController(rootViewController: BaseTabBarViewController())
        navigationController.modalPresentationStyle = .fullScreen
        viewController?.navigationController?.present(navigationController, animated: true, completion: nil)
    }
}
