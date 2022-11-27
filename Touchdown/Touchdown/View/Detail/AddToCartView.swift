//
//  AddToCartView.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

struct AddToCartView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button {}label: {
            Spacer()
            Text("add to cart" .uppercased())
                .font(.system(.title2 , design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
            
        }
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.red ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
