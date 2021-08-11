//
//  Product.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import Foundation

struct Product: Decodable {
    let id: String?
    let imageUrl: String?
    let title: String?
    let description: String?
    let price: String?
    let loved: Int?
}
