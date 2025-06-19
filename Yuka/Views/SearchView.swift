// Views/SearchView.swift
import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @EnvironmentObject var store: ProductStore
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding()
                
                if searchText.isEmpty {
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.gray)
                        .opacity(0.5)
                    
                    Text("Введите название продукта для поиска")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.top, 20)
                        .padding(.horizontal, 40)
                    Spacer()
                } else {
                    List(store.scannedProducts.filter {
                        $0.name.localizedCaseInsensitiveContains(searchText) ||
                        $0.brand.localizedCaseInsensitiveContains(searchText)
                    }) { product in
                        HistoryRow(product: product)
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("Поиск")
        }
    }
}