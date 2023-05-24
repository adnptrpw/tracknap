//
//  SearchSheet.swift
//  tracknap
//
//  Created by Andini Putri Pramudya Wardani on 24/05/23.
//

import SwiftUI

struct SearchSheet: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            //TODO
            Text("HISTORY")
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 12)
                        .foregroundColor(.blue)
                    
                    Text("Home")
                        .font(.body)
                        .foregroundColor(.blue)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
            
            ToolbarItem(placement: .principal) {
                Text("Route")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Text("Cancel")
                    .font(.body)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
        
    }
}

struct SearchSheet_Previews: PreviewProvider {
    static var previews: some View {
        SearchSheet()
    }
}
