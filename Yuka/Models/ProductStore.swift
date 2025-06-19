// Models/ProductStore.swift
import Foundation
import Combine

class ProductStore: ObservableObject {
    @Published var scannedProducts: [Product] = [
        Product(name: "Корм для кошек Renal", brand: "Royal Canin", rating: "Не оценено"),
        Product(name: "Зубная паста Aquatic Mint", brand: "Marvis", rating: "Плохо"),
        Product(name: "Зубная паста с бамбуковой солью", brand: "Perioe", rating: "Плохо"),
        Product(name: "Детское крем-мыло", brand: "BabyLine", rating: "Хорошо"),
        Product(name: "Кондиционер для белья", brand: "Aro", rating: "Отлично")
    ]
    
    func addProduct(name: String, brand: String, rating: String) {
        let newProduct = Product(name: name, brand: brand, rating: rating)
        scannedProducts.insert(newProduct, at: 0)
    }
}