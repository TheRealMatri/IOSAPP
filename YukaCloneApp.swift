// YukaCloneApp.swift
import SwiftUI

@main
struct YukaCloneApp: App {
    @StateObject private var productStore = ProductStore()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(productStore)
        }
    }
}
