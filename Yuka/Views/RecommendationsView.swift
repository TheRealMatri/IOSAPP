// Views/RecommendationsView.swift
import SwiftUI

struct RecommendationsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color("YukaGreen"))
                
                Text("Рекомендации появятся здесь после сканирования продуктов")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                    .padding(.horizontal, 40)
                Spacer()
            }
            .navigationTitle("Рекомендации")
        }
    }
}