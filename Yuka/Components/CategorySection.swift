// Components/CategorySection.swift
import SwiftUI

struct CategorySection: View {
    let title: String
    let items: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
                .padding(.bottom, 8)
            
            ForEach(items, id: \.self) { item in
                HStack {
                    Text(item)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 10)
                Divider()
            }
        }
    }
}