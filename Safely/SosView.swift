//
//  SosView.swift
//  Safely
//
//  Created by Zhansen Zhalel on 04.07.2024.
//

import SwiftUI

struct SosView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("При ее нажатии ваши близкие получат сигнал бедствия с вашей геолокацией и персональными данными")
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    // send sos to contacts
                } label: {
                    Circle()
                        .foregroundStyle(.red)
                        .overlay {
                            Circle()
                                .stroke(lineWidth: 10)
                                .foregroundStyle(.regularMaterial)
                        }
                        .overlay {
                            Text("SOS")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                        }
                        .frame(width: 250)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Паническая кнопка")
        }
    }
}

#Preview {
    SosView()
}
