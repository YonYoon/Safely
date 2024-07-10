//
//  ProfileView.swift
//  Safely
//
//  Created by Zhansen Zhalel on 04.07.2024.
//

import SwiftUI

struct ProfileView: View {
    @Bindable var profile: Profile
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Имя", text: $profile.name)
                    TextField("Фамилия", text: $profile.surname)
                }
                
                Section {
                    TextField("Адрес дома", text: $profile.homeAddress)
                    TextField("Дополнительный адрес", text: $profile.additionalAddress)
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
    ProfileView(profile: Profile())
}
