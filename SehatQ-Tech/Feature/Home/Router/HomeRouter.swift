//
//  HomeRouter.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import Foundation

class HomeRouter {
    weak var viewController: HomeViewController?
    
    func navToDetailProduct(product: Product){
        let productDetail = ProductDetailBuilder.viewController(product: product)
        viewController?.navigationController?.pushViewController(productDetail, animated: true)
    }
}
