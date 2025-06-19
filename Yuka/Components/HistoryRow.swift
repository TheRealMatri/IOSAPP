// Components/HistoryRow.swift
import SwiftUI

struct HistoryRow: View {
    let product: Product
    
    var body: some View {
        HStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color(.systemGray6))
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "barcode")
                        .foregroundColor(.gray)
                )
            
            VStack(alignment: .leading, spacing: 4) {
                Text(product.name)
                    .font(.headline)
                    .lineLimit(1)
                
                HStack {
                    Text(product.brand)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    RatingBadge(rating: product.rating)
                    
                    Text(product.scanDate, style: .relative)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.leading, 8)
                        .lineLimit(1)
                }
            }
            .padding(.vertical, 8)
        }
    }
}