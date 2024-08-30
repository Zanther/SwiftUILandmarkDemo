//
//  FavoriteButton.swift
//  Swift Landmark Test
//
//  Created by Steven Lattenhauer 2nd on 8/28/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .purple : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
