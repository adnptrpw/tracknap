//
//  SearchStation.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 25/05/23.
//

import SwiftUI

struct SearchStation: View {
    @StateObject var mapDataDestination = MapViewModel()
    @StateObject var mapDataArrival = MapViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "train.side.front.car")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28)
                    .foregroundColor(.blue)
                
                TextField("Search a destination station", text:$mapDataDestination.searchText)
                    .font(.body)
                    .padding(.horizontal, 8)
                    .multilineTextAlignment(.leading)
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            
            Image(systemName: "ellipsis")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 12)
                .foregroundColor(.gray)
                .rotationEffect(.degrees(90))
                .padding(.leading, 16)
            
            HStack {
                Image(systemName: "train.side.rear.car")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28)
                    .foregroundColor(.red)
                
                TextField("Search for arrival station", text:$mapDataArrival.searchText)
                    .font(.body)
                    .padding(.horizontal, 8)
                    .multilineTextAlignment(.leading)
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 8)
        .background(Color(.tertiarySystemFill))
        .cornerRadius(12)
    }
}

struct SearchStation_Previews: PreviewProvider {
    static var previews: some View {
        SearchStation()
    }
}
