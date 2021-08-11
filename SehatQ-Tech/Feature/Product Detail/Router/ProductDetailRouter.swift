//
//  ProductDetailRouter.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import Foundation

class ProductDetailRouter {
    weak var viewController: ProductDetailViewController?

    func navToDetailProduct(product: Product) {
        let productDetailView = ProductDetailBuilder.viewController(product: product)
        viewController?
            .navigationController?
            .pushViewController(productDetailView, animated: true)
    }
    
    func navToPurchaseHistory() {
        let historyDetailView = HistoryBuilder.viewController()
        viewController?.navigationController?.pushViewController(historyDetailView, animated: true)
    }
}
