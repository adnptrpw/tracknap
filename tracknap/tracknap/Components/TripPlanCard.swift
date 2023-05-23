//
//  TripPlanCard.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 22/05/23.
//

import SwiftUI

struct TripPlanCard: View {
    var alarmState: () -> Void
    var tripPlan: TripPlan
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Trip Plan")
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Image(systemName: "location.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                        .foregroundColor(.blue)
                    
                    Text("\(tripPlan.departureStation.name)")
                        .font(.body)
                        .padding(.leading)
                }
                
                Image(systemName: "ellipsis")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 12)
                    .foregroundColor(.gray)
                    .rotationEffect(.degrees(90))
                    .padding(.leading, 4)
                
                HStack {
                    Image(systemName: "mappin.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                        .foregroundColor(.red)
                    
                    Text("\(tripPlan.arrivalStation.name)")
                        .font(.body)
                        .padding(.leading)
                }
            }
            
            if(tripPlan.status != "Search"){
                Divider()
                
                HStack(alignment: .center, spacing: 16) {
                    Text("You will be alarmed 1km before your arrival station.")
                        .font(.caption)
                        .padding(.leading)
                        .foregroundColor(.gray)
                    
                    if(tripPlan.status == "Ongoing") {
                        Button(action: alarmState){
                            Label("Stop Alarm", systemImage: "stop.circle.fill")
                        }.buttonStyle(.bordered)
                        
                    } else if (tripPlan.status == "History"){
                        Button(action: alarmState){
                            Label("Start Alarm", systemImage: "stop.circle.fill")
                        }.buttonStyle(.borderedProminent)
                    }
                }
            }
        }
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .cornerRadius(12)
        .border(Color(.quaternaryLabel))
    }
}

struct TripPlanCard_Previews: PreviewProvider {
    static var previews: some View {
        TripPlanCard(
            alarmState: {print("Start")},
            tripPlan: TripPlan(
                id: 0,
                departureStation: Station(
                    name: "Universitas Indonesia Station",
                    address: "Pondok Cina, Beji, Depok City, West Java",
                    latitude: "-6.360528500578786",
                    longitude: "106.83178981054726"),
                arrivalStation: Station(
                    name: "Serpong Station",
                    address: "Jl. St. Serpong No.1, Serpong, Kec. Serpong, Kota Tangerang Selatan, Banten 15310",
                    latitude: "-6.319702439276591",
                    longitude: "106.66560221054687"),
                status: "Ongoing"))
    }
}
