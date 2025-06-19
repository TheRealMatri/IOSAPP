// Views/MainTabView.swift
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView(selection: .constant(2)) {
            HistoryView()
                .tabItem {
                    Label("История", systemImage: "clock")
                }
                .tag(0)
            
            RecommendationsView()
                .tabItem {
                    Label("Рекомендации", systemImage: "heart")
                }
                .tag(1)
            
            ScanView()
                .tabItem {
                    Label("Сканировать", systemImage: "barcode.viewfinder")
                }
                .tag(2)
            
            TopProductsView()
                .tabItem {
                    Label("Топ", systemImage: "crown")
                }
                .tag(3)
            
            SearchView()
                .tabItem {
                    Label("Поиск", systemImage: "magnifyingglass")
                }
                .tag(4)
        }
        .accentColor(Color("YukaGreen"))
        .onAppear {
            UITabBar.appearance().backgroundColor = .systemBackground
        }
    }
}