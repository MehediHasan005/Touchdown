//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Mehedi Hasan on 27/11/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwish: false),
                    footer: SectionView(rotateClockwish: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                        
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
            
        })
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
