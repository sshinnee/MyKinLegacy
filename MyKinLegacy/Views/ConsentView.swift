//
//  ConsentView.swift
//  MyKinLegacy
//
//  Created by shinnee on 15/1/24.
//

import SwiftUI

struct ConsentView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var isShowingDetail = false
    
    var body: some View {
        
        Text("Do you consent to submit your personal and relationship information to the selected financial institutions?")
            .padding()
        
        HStack {
            Button("No") {
                dismiss()

            }
            .padding()
//            NavigationLink(isActive: $isShowingDetail) {
////                AssetCheckListView()
////                dismiss()
//            } label: {
//                Text("No")
//                    .padding()
//            }
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
