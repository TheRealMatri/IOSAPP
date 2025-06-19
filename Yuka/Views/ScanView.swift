// Views/ScanView.swift
import SwiftUI
import AVFoundation

struct ScanView: View {
    @State private var isScanning = false
    @State private var scannedCode: String?
    @EnvironmentObject var store: ProductStore
    
    var body: some View {
        ZStack {
            if isScanning {
                ScannerRepresentable(scannedCode: $scannedCode, isScanning: $isScanning)
                    .edgesIgnoringSafeArea(.all)
            } else {
                VStack {
                    Spacer()
                    BarcodePlaceholderView()
                    Spacer()
                    ScanButton(isScanning: $isScanning)
                }
            }
        }
        .navigationTitle("Сканировать")
        .navigationBarHidden(isScanning)
        .onChange(of: scannedCode) { code in
            if let code = code {
                // Add to history
                store.addProduct(
                    name: "Продукт \(code)",
                    brand: "Бренд \(code)",
                    rating: ["Отлично", "Хорошо", "Плохо", "Не оценено"].randomElement() ?? "Не оценено"
                )
                
                // Reset after 2 seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    scannedCode = nil
                    isScanning = false
                }
            }
        }
    }
}