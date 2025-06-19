// Views/HistoryView.swift
import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var store: ProductStore
    
    var body: some View {
        NavigationView {
            if store.scannedProducts.isEmpty {
                VStack {
                    Spacer()
                    Image(systemName: "clock.badge.xmark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.gray)
                    Text("История сканирований пуста")
                        .font(.title2)
                        .padding(.top, 20)
                    Spacer()
                }
                .navigationTitle("История")
            } else {
                List {
                    ForEach(store.scannedProducts) { product in
                        HistoryRow(product: product)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(.plain)
                .navigationTitle("История")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        EditButton()
                    }
                }
            }
        }
    }
    
    private func deleteItems(at offsets: IndexSet) {
        store.scannedProducts.remove(atOffsets: offsets)
    }
}