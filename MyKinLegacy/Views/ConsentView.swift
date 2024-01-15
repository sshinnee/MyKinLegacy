//
//  ConsentView.swift
//  MyKinLegacy
//
//  Created by shinnee on 15/1/24.
//

import SwiftUI

struct ConsentView: View {
    var body: some View {
        Text("Do you consent to submit your personal and relationship information to the selected financial institutions?")
            .padding()
        
        HStack {
            NavigationLink {
                AssetCheckListView()
            } label: {
                Text("No")
                    .padding()
            }
            NavigationLink {
                ClosingView()
            } label: {
                Text("Yes")
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Capsule (style: .continuous)
                    )
            }
        }
       
    }
}

#Preview {
    ConsentView()
}
