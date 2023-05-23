//
//  ContentView.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 22/05/23.
//

import SwiftUI
import CoreData
import MapKit

struct ContentView: View {
    @State private var userTrackingMode: MKUserTrackingMode = .follow

        var body: some View {
            MapView(userTrackingMode: $userTrackingMode)
                .edgesIgnoringSafeArea(.all)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
