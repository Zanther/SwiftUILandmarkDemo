//
//  Landmark.swift
//  Swift Landmark Test
//
//  Created by Steven Lattenhauer 2nd on 8/23/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var category: String
    var description: String
    var id: Int
    var isFeatured: Bool
    var isFavorite: Bool
    var name: String
    var park: String
    var state: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
