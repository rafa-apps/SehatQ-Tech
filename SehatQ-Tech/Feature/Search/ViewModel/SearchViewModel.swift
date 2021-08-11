//
//  SearchViewModel.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import UIKit
import RxSwift

class SearchViewModel {
    let products: [Product]
    let productPubSub: PublishSubject<[Product]> = PublishSubject()
    let haveDataPubSub: PublishSubject<Bool> = PublishSubject()
    
    init(products: [Product] = [Product]()) {
        self.products = products
    }

    func search(query: String) {
        var searchProduct = products
        
        if !query.isEmpty {
            searchProduct = products.filter { ($0.title?.lowercased().contains(query.lowercased()) ?? false) }
        }
        
        if searchProduct.count > 0 {
            haveDataPubSub.onNext(true)
        } else {
            haveDataPubSub.onNext(false)
        }
        
        productPubSub.onNext(searchProduct)
    }
}
