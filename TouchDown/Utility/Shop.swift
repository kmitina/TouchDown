//
//  Shop.swift
//  TouchDown
//
//  Created by DVKSH on 9.03.21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
