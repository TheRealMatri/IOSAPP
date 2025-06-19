// Components/ScanButton.swift
import SwiftUI

struct ScanButton: View {
    @Binding var isScanning: Bool
    
    var body: some View {
        Button(action: {
            isScanning = true
        }) {
            Text("Начать сканирование")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("YukaGreen"))
                .cornerRadius(12)
                .padding()
        }
    }
}