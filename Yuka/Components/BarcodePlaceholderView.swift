// Components/BarcodePlaceholderView.swift
import SwiftUI

struct BarcodePlaceholderView: View {
    var body: some View {
        VStack {
            Image(systemName: "barcode.viewfinder")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(Color("YukaGreen"))
            
            Text("Наведите камеру на штрих-код продукта")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.top, 20)
                .padding(.horizontal, 40)
        }
    }
}