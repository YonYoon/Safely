//
//  SafelyApp.swift
//  Safely
//
//  Created by Zhansen Zhalel on 04.07.2024.
//

import SwiftUI

@main
struct SafelyApp: App {
    @State private var profileStore = ProfileStore()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                SosView()
                    .tabItem {
                        Label("Экстренный вызов", systemImage: "sos.circle")
                    }
                
                ProfileView()
                    .tabItem { Label("Профиль", systemImage: "person.circle.fill") }
            }
            .environment(profileStore)
            .task {
                do {
                    try await profileStore.load()
                } catch {
                    print(error)
                }
            }
        }
    }
}
