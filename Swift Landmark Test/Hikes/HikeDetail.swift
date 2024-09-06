/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view showing the details for a hike.
*/

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    @State var dataToShow = \Hike.Observation.elevation
    @State var colorButton = \Hike.Observation.heartRate

    var buttons = [
        ("Elevation", \Hike.Observation.elevation, Color(hue: 0.2, saturation: 0.9, brightness: 0.7)),
        ("Heart Rate", \Hike.Observation.heartRate, Color(hue: 0, saturation: 0.9, brightness: 0.7)),
        ("Pace", \Hike.Observation.pace, Color(hue: 0.6, saturation: 0.7, brightness: 0.7))
    ]
    
    var colors =
       [
        (Color(hue: 0.2, saturation: 0.9, brightness: 0.7)),
        (Color(hue: 0, saturation: 0.9, brightness: 0.7)),
        (Color(hue: 0.6, saturation: 0.7, brightness: 0.7))
    ]

    
    var heartRateColor = Color(hue: 0.2, saturation: 0.9, brightness: 0.7)
    
    

    var body: some View {
        VStack {
            HikeGraph(hike: hike, path: dataToShow)
                .frame(height: 200)
            HStack(spacing: 25) {
                ForEach(buttons, id: \.0) { value in
                    Button {
                        dataToShow = value.1
//                        colors
//                        colorButton = value.0
                    } label: {
                        Text(value.0)
                            .font(value.1 == dataToShow ? .system(size: 20) : .system(size: 15))
                            .fontWeight(value.1 == dataToShow ? .heavy : .regular)
                            .fontDesign(.rounded)
                            .foregroundStyle(value.1 == dataToShow
                                             ? value.2 : .gray)
                    }
                    .animation(.smooth(), value: 1)
                }
            }
        }
    }
}

#Preview {
    HikeDetail(hike: ModelData().hikes[0])
}
