//
//  ProfileStore.swift
//  Safely
//
//  Created by Zhansen Zhalel on 05.07.2024.
//

import Observation
import SwiftUI

@MainActor
@Observable class ProfileStore {
    var profile = Profile()
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("profile", conformingTo: .data)
    }
    
    func load() async throws {
        let task = Task<Profile, Error> {
            let fileURL = try Self.fileURL()
            guard let data = try? Data(contentsOf: fileURL) else {
                return Profile()
            }
            let profile = try JSONDecoder().decode(Profile.self, from: data)
            return profile
        }
        let profile = try await task.value
        self.profile = profile
    }
    
    func save(profile: Profile) async throws {
        let task = Task {
            let data = try JSONEncoder().encode(profile)
            let outfile = try Self.fileURL()
            try data.write(to: outfile)
        }
        
        _ = try await task.value
    }
}
