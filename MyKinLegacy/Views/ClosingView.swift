//
//  ClosingView.swift
//  MyKinLegacy
//
//  Created by shinnee on 15/1/24.
//

import SwiftUI

struct ClosingView: View {
    var body: some View {
        VStack {
            Text("Your information has been submitted. Please check back in the app for updates.")
                .padding()
            
            NavigationLink {
                StarterView()
            } label: {
                Text("Return Home")
                    .padding()
            }
        }
    }
}

#Preview {
    ClosingView()
}
