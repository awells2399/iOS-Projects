//
//  Shop.swift
//  Touchdown
//
//  Created by Aaron Wells on 7/19/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct = false
    @Published var selectedProduct: Product?
}
