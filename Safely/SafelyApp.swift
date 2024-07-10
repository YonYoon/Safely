//
//  SafelyApp.swift
//  Safely
//
//  Created by Zhansen Zhalel on 04.07.2024.
//

import SwiftData
import SwiftUI

@main
struct SafelyApp: App {
    @State private var profile = Profile()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                SosView()
                    .tabItem { Label("Помощь", systemImage: "sos.circle") }
                
                ProfileView(profile: profile)
                    .tabItem { Label("Профиль", systemImage: "person.circle.fill") }
                
                TutorialsView()
                    .tabItem { Label("Обучение", systemImage: "graduationcap.circle") }
                
                EvidenceListView()
                    .tabItem { Label("Хранение", systemImage: "lock.circle") }
            }
        }
    }
}
