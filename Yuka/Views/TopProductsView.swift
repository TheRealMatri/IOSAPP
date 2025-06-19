// Views/TopProductsView.swift
import SwiftUI

struct TopProductsView: View {
    let foodCategories = [
        "Мороженое", "Арахисовое масло", "Мюсли и Гранола",
        "Злаковые батончики", "Темный шоколад", "Конфеты",
        "Фруктовые снеки", "Холодные чаи", "Попкорн", "Чипсы из тортильи"
    ]
    
    let beautyCategories = [
        "Солнцезащитные кремы", "После загара", "Зубные пасты",
        "Дезодоранты", "Гели для душа", "Скрабы и пилинги",
        "Шампуни", "Кондиционеры", "Лаки для волос", "Сыворотки для волос"
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    CategorySection(title: "Еда", items: foodCategories)
                    CategorySection(title: "Косметика", items: beautyCategories)
                }
                .padding()
            }
            .navigationTitle("Топ Продукты")
        }
    }
}