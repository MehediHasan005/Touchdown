//
//  SectionView.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwish:Bool
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Category".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees:rotateClockwish ? 90 : -90))
            Spacer()
                
        }
        .background(colorGray .cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwish: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
