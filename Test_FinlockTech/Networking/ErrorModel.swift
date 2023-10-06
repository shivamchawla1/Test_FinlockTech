//
//  ErrorModel.swift
//  Test_FinlockTech
//
//  Created by Shivam Chawla on 07/10/23.
//

import Foundation


enum ErrorModel: Error, LocalizedError {
    case invalidURL
    case serverError
    case invalidData
    case unkown(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return ""
        case .serverError:
            return "There was an error with the server. Please try again later"
        case .invalidData:
            return "The data is invalid. Please try again later"
        case .unkown(let error):
            return error.localizedDescription
        }
    }
}
