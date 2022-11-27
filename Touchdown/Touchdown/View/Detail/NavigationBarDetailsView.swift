//
//  NavigationBarDetailsView.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

struct NavigationBarDetailsView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button {
            shop.selectedProduct = nil
            shop.showingProduct = false
        }label: {
            Image(systemName: "chevron.left")
                .font(.title)
                .foregroundColor(.white)
            Spacer()
            Button {
                
            }label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct NavigationBarDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGray)
            .environmentObject(Shop())
    }
}
