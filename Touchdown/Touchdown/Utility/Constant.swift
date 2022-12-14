//
//  Constant.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

let players:[Player] = Bundle.main.decode("player.json")
let categories:[Catagory] = Bundle.main.decode("category.json")
let products:[Product] = Bundle.main.decode("product.json")
let sampleProduct:Product = products[0]

let brands:[Brand] = Bundle.main.decode("brand.json")

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)


let columnSpacing: CGFloat = 10
let rowSpacing:CGFloat = 10
var gridLayout:[GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}
