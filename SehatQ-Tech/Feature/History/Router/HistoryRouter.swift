//
//  HistoryRouter.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 11/08/21.
//

import Foundation

class HistoryRouter {
    weak var viewController: HistoryViewController?
    
    func navToDetailProduct(product: Product){
        let productDetailView = ProductDetailBuilder.viewController(product: product)
        viewController?.navigationController?.pushViewController(productDetailView, animated: true)
    }
}
