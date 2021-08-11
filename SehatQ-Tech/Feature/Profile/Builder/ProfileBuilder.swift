//
//  ProfileBuilder.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit

struct ProfileBuilder {
    static func viewController() -> UIViewController {
        let viewModel = ProfileViewModel()
        let router = ProfileRouter()
        let viewController = ProfileViewController(
            viewModel: viewModel,
            router: router
        )
        router.viewController = viewController
        return viewController
    }
}
