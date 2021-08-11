//
//  LoginBuilder.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit

struct LoginBuilder {
    static func viewController() -> UIViewController {
        let viewModel = LoginViewModel()
        let router = LoginRouter()
        let viewController = LoginViewController(viewModel: viewModel, router: router)
        router.viewController = viewController
        return viewController
    }
}
