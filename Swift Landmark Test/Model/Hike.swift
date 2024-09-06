//
//  Hike.swift
//  Swift Landmark Test
//
//  Created by Steven Lattenhauer 2nd on 8/28/24.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var difficulty: Int
    var distance: Double
    var id: Int
    var name: String
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var heartRate: Range<Double>
        var pace: Range<Double>
    }
    
    
}
