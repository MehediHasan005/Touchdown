//
//  ReatingSizeDetailsView.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

struct ReatingSizeDetailsView: View {
    let sizes:[String] = ["XS","S","M","L","XL"]
    var body: some View {
        HStack(alignment:.top,spacing: 3) {
            VStack(alignment: .leading ,spacing: 3) {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center,spacing: 3) {
                    Button { }label: {
                        ForEach(1...5 , id:\.self) {i in
                            Image(systemName: "star.fill")
                                .frame(width: 28,height: 28,alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            Spacer()
            VStack(alignment: .trailing,spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment:.center,spacing: 5) {
                    ForEach(sizes , id: \.self) {size in
                        Button {}label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28 ,height: 28,alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray , lineWidth: 2)
                                )
                        }
                    }
                }
            }
        }
    }
}

struct ReatingSizeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ReatingSizeDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
