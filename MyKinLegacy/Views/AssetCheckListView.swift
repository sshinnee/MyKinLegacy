//
//  AssetCheckListView.swift
//  MyKinLegacy
//
//  Created by shinnee on 15/1/24.
//

import SwiftUI

struct AssetCheckListView: View {
    @State private var dbsBankCheckboxDefault = false
    @State private var ocbcBankCheckboxDefault = false
    @State private var greatEasternCheckboxDefault = false
    @State private var prudentialCheckboxDefault = false
    
    var body: some View {
        VStack {
            Text("Financial Institutions in SG")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Divider()
            
            VStack {
                Text("Banks")
                    .font(.title2)
                    .padding(.horizontal, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Spacer()
                    Toggle("DBS",isOn: $dbsBankCheckboxDefault)
                        .toggleStyle(.switch)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Toggle("OCBC", isOn: $ocbcBankCheckboxDefault)
                        .toggleStyle(.switch)
                    Spacer()
                }
               
            }
            
            Divider()
            
            VStack {
                Text("Insurance Companies")
                    .font(.title2)
                    .padding(.horizontal, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Spacer()
                    Toggle("Great Eastern Singapore", isOn: $greatEasternCheckboxDefault)
                        .toggleStyle(.switch)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Toggle("Prudential Singapore", isOn: $prudentialCheckboxDefault)
                        .toggleStyle(.switch)
                    Spacer()
                }
            }
            
            Spacer()
            
            NavigationLink {
                ConsentView()
            } label: {
                Text("Notify")
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Capsule (style: .continuous)
                    )
            }
        }
        .padding()
    }
}

#Preview {
    AssetCheckListView()
}
