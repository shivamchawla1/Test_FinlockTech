//
//  ContentView.swift
//  Test_FinlockTech
//
//  Created by Shivam Chawla on 06/10/23.
//

import SwiftUI

struct SelectCountryView: View {
    @StateObject private var selectCountryViewModel = SelectCountryViewModel()
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            if selectCountryViewModel.Loading {
                ProgressView()
                    
            }else{
                VStack{
                    Menu("Select") {
                        ForEach(selectCountryViewModel.selectCountryModel.data , id: \.country) { data in
                            NavigationLink {
                                CitiesView(citiesData: data.cities)
                            } label: {
                                Text("\(data.country)")
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
        .navigationTitle("Select A Country")
        .onReceive(asyncUtility.shared.$error, perform: { error in
            if error != nil {
                showAlert.toggle()
            }
        })
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Error") , message: Text(asyncUtility.shared.error?.localizedDescription ?? ""))
        })
        .padding()
    }
}

#Preview {
    SelectCountryView()
}
