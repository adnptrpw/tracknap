//
//  Home.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 23/05/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    @Binding var userTrackingMode: MKUserTrackingMode
        
        func makeUIView(context: Context) -> MKMapView {
            let mapView = MKMapView()
            mapView.delegate = context.coordinator
            return mapView
        }
        
        func updateUIView(_ uiView: MKMapView, context: Context) {
            uiView.userTrackingMode = userTrackingMode
        }
        
        func makeCoordinator() -> Coordinator {
            Coordinator()
        }
        
        class Coordinator: NSObject, MKMapViewDelegate {
            // you can handle delegate methods here
        }
}
