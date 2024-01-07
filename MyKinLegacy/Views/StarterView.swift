//
//  StarterView.swift
//  MyKinLegacy
//
//  Created by shinnee on 7/1/24.
//

import SwiftUI

struct StarterView: View {
    @State private var uin = String()
    var body: some View {
        VStack {
            TextField("Please enter the NRIC/FIN of your loved one", text: $uin)
                .multilineTextAlignment(.center)
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
