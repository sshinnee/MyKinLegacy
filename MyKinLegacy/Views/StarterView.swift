//
//  StarterView.swift
//  MyKinLegacy
//
//  Created by shinnee on 7/1/24.
//

import SwiftUI

struct StarterView: View {
    @State private var uin = String()
    @State private var isNavigationActive = false
    
    var body: some View {
        VStack {
            TextField("Please enter the NRIC/FIN of your loved one", text: $uin)
                .multilineTextAlignment(.center)
                .padding()
            
            NavigationLink {
                RelationshipCheckResultView(caseId: String(uin.last ?? "G"))
            } label: {
                Text("Check Status")
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Capsule (style: .continuous)
                    )
            }
                .disabled(uin.count != 9)

        }
}
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
