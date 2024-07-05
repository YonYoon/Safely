//
//  Profile.swift
//  Safely
//
//  Created by Zhansen Zhalel on 05.07.2024.
//

import SwiftData

@Model
final class Profile {
    var name: String
    var surname: String
    var homeAddress: String
    var additionalAddress: String
    // TODO: Change to a real data type
    var medicalRecord: String
    var contacts: String
    
    init(name: String, surname: String, homeAddress: String, additionalAddress: String, medicalRecord: String, contacts: String) {
        self.name = name
        self.surname = surname
        self.homeAddress = homeAddress
        self.additionalAddress = additionalAddress
        self.medicalRecord = medicalRecord
        self.contacts = contacts
    }
}
