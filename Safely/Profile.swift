//
//  Profile.swift
//  Safely
//
//  Created by Zhansen Zhalel on 05.07.2024.
//

import Foundation

struct Profile: Codable {
    var name = ""
    var surname = ""
    var homeAddress = ""
    var additionalAddress = ""
    // TODO: Add medical record
    var contacts = [String]()
}
