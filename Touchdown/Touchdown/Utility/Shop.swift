//
//  Shop.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import Foundation

class Shop:ObservableObject {
    @Published var showingProduct:Bool = false
    @Published var selectedProduct: Product? = nil
}
