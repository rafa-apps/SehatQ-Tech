//
//  HistoryBuilder.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 11/08/21.
//

import UIKit

struct HistoryBuilder {
    static func viewController() -> UIViewController {
        let viewModel = HistoryViewModel()
        let router = HistoryRouter()
        let viewController = HistoryViewController(
            viewModel: viewModel,
            router: router
        )
        router.viewController = viewController
        return viewController
    }
}

