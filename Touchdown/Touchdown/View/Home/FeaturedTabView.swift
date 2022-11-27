//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) {player in
                FeaturedItemView(player: player)
                    .frame(height: 300)
                    .padding(.top , 10)
                    .padding(.horizontal , 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            //.previewLayout(.sizeThatFits)
            .previewDevice("iPhone 12 pro")
            .background(Color.gray)
    }
}
