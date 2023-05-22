//
//  Alarm.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 22/05/23.
//

import Foundation

struct TripPlan: Codable, Hashable{
    let id: Int
    let departureStation: Station
    let arrivalStation: Station
    let status: Bool
}
