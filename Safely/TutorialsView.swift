//
//  TutorialsView.swift
//  Safely
//
//  Created by Zhansen Zhalel on 10.07.2024.
//

import SwiftUI

struct TutorialsView: View {
    var tutorials = TutorialsData.tutorials
    
    var body: some View {
        NavigationStack {
            List(tutorials, id: \.self) { tutorial in
                Section {
                    NavigationLink(tutorial.title) { LessonView(tutorial: tutorial) }
                }
            }
            .navigationTitle("Обучение")
        }
    }
}

#Preview {
    TutorialsView()
}

struct LessonView: View {
    var tutorial: Tutorial
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(tutorial.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text(tutorial.content)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LessonView(tutorial: Tutorial(title: "Title", content: "Content"))
}
