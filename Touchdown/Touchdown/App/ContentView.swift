//
//  ContentView.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing:0) {
                NavigationBarView()
                    .padding(.horizontal , 15)
                    .padding(.bottom)
                    .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color:.black .opacity(0.05),radius: 5,x: 0,y: 5)
                ScrollView(.vertical , showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: 300)
                        CategoryGridView()
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout,spacing: 15) {
                            ForEach(products) {product in
                                ProductItemView(product: product)
                            }
                        }
                        .padding(15)
                        TitleView(title: "Brands")
                        BrandGridView()
                            
                            //.padding(.vertical ,20)
                        FooterView()
                    }
                }
                
            }
            .background(colorBackground .ignoresSafeArea(.all , edges: .all))
        }
        .ignoresSafeArea(.all , edges: .all)
                         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
