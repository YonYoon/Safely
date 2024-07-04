//
//  ProfileView.swift
//  Safely
//
//  Created by Zhansen Zhalel on 04.07.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Имя")
                    Text("Фамилия")
                }
                
                Section {
                    Text("Адрес дома")
                    Text("Дополнительный адрес")
                }
                
                Section {
                    Text("Медицинская карта")
                }
                
                Section {
                    Text("Близкие контакты")
                }
            }
            .navigationTitle("Профиль")
        }
    }
}

#Preview {
    ProfileView()
}
