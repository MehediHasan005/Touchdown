//
//  HeaderDetailsView.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

struct HeaderDetailsView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        VStack(alignment: .leading,spacing: 6) {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        }
        .foregroundColor(.white)
    }
}

struct HeaderDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailsView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGray)
    }
}
