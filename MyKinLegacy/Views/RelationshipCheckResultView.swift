//
//  RelationshipCheckView.swift
//  MyKinLegacy
//
//  Created by shinnee on 7/1/24.
//

import SwiftUI


struct RelationshipCheckResultView: View {
    let caseId: String
    
    var map = [
        "A": "Our records indicate you are not related to the given UIN.",
        "B": "Our records indicate your [relationship] is not deceased.",
        "C": "Our records indicate [name] is not deceased.",
        "D": "Your [relationship] has designated someone else to manage their estate.",
        "E": "Your [relationship] has designated you as the trustee of their estate.",
        "F": "Your [relationship] has not designated a trustee. All recorded kin will be able to proceed.",
        "G": "[Name] has designated you as the trustee of their estate."
    ]
    
    var body: some View {
        VStack {
            Text(map[caseId] ?? "")
                .multilineTextAlignment(.center)
                .padding()
            
            switch caseId {
                case "E", "F", "G":
                    NavigationLink {
                        
                    } label: {
                        Text("Check Status")
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                Capsule (style: .continuous)
                            )
                    }
                default:
                    EmptyView()
            }
        }
    }
}

struct RelationshipCheckResultView_Previews: PreviewProvider {
    static var previews: some View {
        RelationshipCheckResultView(caseId: "")
    }
}
