// Models/Product.swift
import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let brand: String
    let rating: String // "Отлично", "Хорошо", "Плохо", "Не оценено"
    let scanDate: Date = Date()
}