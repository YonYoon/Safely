//
//  Profile.swift
//  Safely
//
//  Created by Zhansen Zhalel on 05.07.2024.
//

import Foundation

struct Profile: Codable {
    var name: String
    var surname: String
    var homeAddress: String
    var additionalAddress: String
    // TODO: Add medical record
    var contacts: [String]
}
