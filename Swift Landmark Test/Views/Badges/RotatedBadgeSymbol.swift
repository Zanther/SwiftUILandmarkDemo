//
//  RotatedBadgeSymbol.swift
//  Swift Landmark Test
//
//  Created by Steven Lattenhauer 2nd on 8/28/24.
//

import SwiftUI


struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}


#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 7))
}
