//
//  HomeBuilder.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit

struct HomeBuilder {
    static func viewController() -> UIViewController {
        let viewModel = HomeViewModel()
        let router = HomeRouter()
        let viewController = HomeViewController(viewModel: viewModel, router: router)
        router.viewController = viewController
        return viewController
    }
}

