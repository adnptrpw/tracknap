//
//  SearchInputField.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 23/05/23.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center){
            HStack(alignment: .center, spacing: 0) {
                Image(systemName: "mappin.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 17)
                    .foregroundColor(.gray)
                
                Text("Search for arrival station")
                    .font(.body)
                    .padding(.horizontal, 8)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 8)
            .background(Color(.tertiarySystemFill))
            .cornerRadius(10)
            
            Button("Set alarm", action: {})
        }
        
        
        
    }
}

struct SearchInputField_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
