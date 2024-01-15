//
//  LoginView.swift
//  MyKinLegacy
//
//  Created by shinnee on 7/1/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        VStack {
            Spacer()
            
            Text("Estate Settlement Discovery Tool")
                .font(.largeTitle)
                .padding()
                .multilineTextAlignment(.center)
            
            NavigationView {
                NavigationLink {
                    StarterView()
                } label: {
                    Text("Log in with SingPass")
                }
            }
        }
        
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
