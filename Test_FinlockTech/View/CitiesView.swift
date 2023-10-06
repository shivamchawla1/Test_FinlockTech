//
//  CitiesView.swift
//  Test_FinlockTech
//
//  Created by Shivam Chawla on 06/10/23.
//

import SwiftUI

struct CitiesView: View {
    let citiesData: [String]
    var body: some View {
        List {
            ForEach(citiesData , id: \.self){ cities in
                Text("\(cities)")
            }
        }
        .navigationTitle("Cities")
    }
}

#Preview {
    CitiesView(citiesData: [])
}
