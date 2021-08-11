//
//  ProductDetailBuilder.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit

struct ProductDetailBuilder {
    static func viewController(product: Product) -> UIViewController {
        let viewModel = ProductDetailViewModel(product: product)
        let router = ProductDetailRouter()
        let viewController = ProductDetailViewController(viewModel: viewModel, router: router)
        router.viewController = viewController
        return viewController
    }
}
