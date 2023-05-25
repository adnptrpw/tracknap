//
//  Place.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 25/05/23.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    var id = UUID().uuidString
    var place: CLPlacemark
    
}
