//
//  SelectCountryModel.swift
//  Test_FinlockTech
//
//  Created by Shivam Chawla on 07/10/23.
//

import Foundation

struct SelectCountryModel: Codable {
    let error: Bool
    let msg: String
    let data: [CountryData]
}

// MARK: - Datum
struct CountryData: Codable {
    let iso2, iso3, country: String
    let cities: [String]
}
