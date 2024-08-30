//
//  CircleImage.swift
//  Swift Landmark Test
//
//  Created by Steven Lattenhauer 2nd on 8/23/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image            .clipShape(Circle())
            .overlay {
                Circle().stroke(.purple, lineWidth: 5)
            }
            .shadow(radius: 10)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
