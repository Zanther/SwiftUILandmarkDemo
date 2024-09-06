//
//  CategoriesRow.swift
//  Swift Landmark Test
//
//  Created by Steven Lattenhauer 2nd on 8/29/24.
//

import SwiftUI

struct CategoriesRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators:  false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoriesRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(3))
        )
}
