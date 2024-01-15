//
//  AssetCheckListView.swift
//  MyKinLegacy
//
//  Created by shinnee on 15/1/24.
//

import SwiftUI

struct AssetCheckListView: View {
    @State private var checkboxDefault = false
    
    var body: some View {
        VStack {
            Text("Financial Institutions")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Text("Banks")
                .font(.title2)
                .frame(alignment: .leading)
            
            VStack {
                HStack {
                    Spacer()
                        .padding()
                    Toggle("DBS",isOn: $checkboxDefault)
    //                {
    //                    Text("DBS")
    //                        .frame(maxWidth: .infinity, alignment: .center)
    //                }
                        .toggleStyle(.switch)
    //                    .frame(alignment: .center)
                    Spacer()
                        .padding()
                }
                
                HStack {
                    Spacer()
                        .padding()
                    Toggle("OCBC", isOn: $checkboxDefault)
                        .toggleStyle(.switch)
                    Spacer()
                        .padding()
                }
               
            }
//                .padding(.left, .right)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            
            
            Text("Insurance Companies")
                .font(.title2)
            
            Spacer()
        }
    }
}

#Preview {
    AssetCheckListView()
}
