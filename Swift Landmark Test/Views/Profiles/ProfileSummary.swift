//
//  ProfileSummary.swift
//  Swift Landmark Test
//
//  Created by Steven Lattenhauer 2nd on 8/29/24.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" ) ")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Badges Received")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "My First Hike")
                            HikeBadge(name: "Earth Day 2K")
                                .hueRotation(Angle(degrees: 99))
                            HikeBadge(name: "The Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 240))
                            HikeBadge(name: "Reaching The Top!")
                                .hueRotation(Angle(degrees: 269))
                        }
                        .padding(.bottom)
                    }
                }
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
