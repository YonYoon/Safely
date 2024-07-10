//
//  Profile.swift
//  Safely
//
//  Created by Zhansen Zhalel on 05.07.2024.
//


import Foundation
import Observation

@Observable class Profile {
    var name = ""
    var surname = ""
    var homeAddress = ""
    var additionalAddress = ""
    // TODO: Add medical record
    var contacts = [String]()
}
