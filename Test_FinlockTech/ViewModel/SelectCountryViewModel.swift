//
//  SelectCountryViewModel.swift
//  Test_FinlockTech
//
//  Created by Shivam Chawla on 07/10/23.
//

import Foundation

class SelectCountryViewModel: ObservableObject {
    @Published var selectCountryModel = SelectCountryModel(error: false, msg: "", data: [])
    @Published var Loading = true

    init() {
        asyncUtility.shared.loadData(url: URL(string: "\(urlString.countryUrl.rawValue)"), method: urlMethod.get, requestBody: "" , resultType: SelectCountryModel.self) { result , loading in
            
            self.selectCountryModel = result ?? SelectCountryModel(error: false, msg: "", data: [])
            self.Loading = loading
            
        }
    }
}
