//
//  HomeView.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 23/05/23.
//

import SwiftUI
import MapKit

struct HomeView: View {
    @State var presentSheet = true
    @State private var userTrackingMode: MKUserTrackingMode = .follow

        var body: some View {
            ZStack {
                MapView(userTrackingMode: $userTrackingMode)
                    .edgesIgnoringSafeArea(.all)
            }
            .sheet(isPresented: $presentSheet) {
                Text("Detail")
                    .presentationDetents([.medium, .large])

            }
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
