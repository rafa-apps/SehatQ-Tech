//
//  SearchRouter.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import Foundation

class SearchRouter {
    weak var viewController: SearchViewController?
    
    func navToDetailProduct(product: Product){
        let productDetailView = ProductDetailBuilder.viewController(product: product)
        viewController?.navigationController?.pushViewController(productDetailView, animated: true)
    }
}
