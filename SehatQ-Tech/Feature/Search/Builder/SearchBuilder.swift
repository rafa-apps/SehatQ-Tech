//
//  SearchBuilder.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit

struct SearchBuilder {
    
    static func viewController(products: [Product]) -> UIViewController {
        let viewModel = SearchViewModel(products: products)
        let router = SearchRouter()
        let viewController = SearchViewController(viewModel: viewModel, router: router)
        router.viewController = viewController
        return viewController
    }
    
}
