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
            Text("Financial Institutions in SG")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
//            Spacer()
            
            Divider()
            
            VStack {
                Text("Banks")
                    .font(.title2)
                    .padding(.horizontal, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Spacer()
//                        .padding()
                    Toggle("DBS",isOn: $checkboxDefault)
                        .toggleStyle(.switch)
                    Spacer()
//                        .padding()
                }
                
                HStack {
                    Spacer()
//                        .padding()
                    Toggle("OCBC", isOn: $checkboxDefault)
                        .toggleStyle(.switch)
                    Spacer()
//                        .padding()
                }
               
            }
            
            Divider()
//                .frame(maxWidth: .infinity, alignment: .trailing)
            
            
            VStack {
                Text("Insurance Companies")
                    .font(.title2)
                    .padding(.horizontal, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Spacer()
                    //                    .padding(.horizontal, 30)
                    Toggle("Great Eastern Singapore", isOn: $checkboxDefault)
                        .toggleStyle(.switch)
                    Spacer()
                    //                    .padding(.horizontal, 10)
                }
                
                HStack {
                    Spacer()
                    //                    .padding(.horizontal, 10)
                    Toggle("Prudential Singapore", isOn: $checkboxDefault)
                        .toggleStyle(.switch)
                    Spacer()
                    //                    .padding(.horizontal, 10)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    AssetCheckListView()
}
