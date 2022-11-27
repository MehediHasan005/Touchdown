//
//  ProductDetailsView.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading,spacing: 5) {
            NavigationBarDetailsView()
                .padding(.horizontal)
                .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
            HeaderDetailsView()
                .padding(.horizontal)
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            Text(sampleProduct.name)
            
            VStack(alignment: .center,spacing: 0) {
                ReatingSizeDetailsView()
                    .padding(.top , 25)
                    .padding(.bottom , 10)
                ScrollView(.vertical , showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                QuantityFavouriteDetailView()
                    .padding(.vertical , 10)
                AddToCartView()
                    .padding(.bottom , 20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .ignoresSafeArea(.all)
                    .clipShape(CustomShape())
                    .padding(.top , -105)
            )
            
            
        }
        .zIndex(0)
        .ignoresSafeArea(.all , edges: .all)
        .background(Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green,
                          blue:shop.selectedProduct?.green ?? sampleProduct.blue).ignoresSafeArea(.all , edges: .all))
        
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
