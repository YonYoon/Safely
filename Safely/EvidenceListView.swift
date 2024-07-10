//
//  EvidenceListView.swift
//  Safely
//
//  Created by Zhansen Zhalel on 10.07.2024.
//

import SwiftUI

struct EvidenceListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Возможность записывать аудио, видео и текстовые сообщения, которые автоматически сохраняются в облаке и могут быть использованы как доказательства в случае необходимости.")
                    
                    Spacer()
                }
                .padding(.bottom, 100)
                
                Button {
                    // Load evidence
                } label: {
                    VStack {
                        Image(systemName: "folder.fill.badge.plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        
                        Text("Загрузить аудио/видео/текст")
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Доказательства")
        }
    }
}

#Preview {
    EvidenceListView()
}
