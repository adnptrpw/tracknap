//
//  HomeView.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 23/05/23.
//

import SwiftUI
import MapKit

struct HomeView: View {
    @Environment(\.dismiss) var dismiss
    
    @StateObject var mapData = MapViewModel()
    
    @State var presentSheet = true
    @State private var showModal = false
    @State private var userTrackingMode: MKUserTrackingMode = .follow

        var body: some View {
            ZStack {
                MapView(userTrackingMode: $userTrackingMode)
                    .environmentObject(mapData)
                    .ignoresSafeArea(.all, edges: .all)
            }
            .sheet(isPresented: $presentSheet) {
                VStack(alignment: .leading, spacing: 20) {
                    Button(action: {
                        showModal.toggle()
                    }) {
                        SearchBar()
                    }
                    .sheet(isPresented: $showModal) {
                        NavigationView{
                            SearchSheet()
                        }
                    }
                    
                    
                    Text("HISTORY")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.secondary)
                }
                .presentationDetents([.medium, .large])
                .padding(.horizontal, 16)
                .padding(.vertical, 32)
                .frame(maxHeight: .infinity, alignment: .top)
                
            }
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
