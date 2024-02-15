//
//  main.swift
//  Order_products
//
//  Created by Aruuke Turgunbaeva on 3/12/23.
//

//Создать класс OrderManager и класс Product, который управляет заказами, скрывая детали реализации от внешнего использования. Определите класс OrderManager с приватным массивом заказов.
//Предоставьте публичные методы для добавления заказа, удаления заказа и получения информации о всех заказах.  Создайте ProductsScreen и сделайте возможность добавления товара в корзину, удаление и просмотр информации о товарах.

import Foundation

func createProduct() -> Product? {
    print("Введите название продукта:")
    guard let productName = readLine(), !productName.isEmpty else {
        return nil
    }

    print("Введите цену продукта:")
    guard let priceString = readLine(), let price = Double(priceString) else {
        return nil
    }

    return Product(productName: productName, price: price)
}

var products: [Product] = []

while let newProduct = createProduct() {
    products.append(newProduct)
}

print("Введенные продукты:")
for product in products {
    print("Название: \(product.productName), Цена: \(product.price)")
}

//let product1 = Product(productName: "Йогурт", price: 58)
//let product2 = Product(productName: "Вода", price: 30)
//let product3 = Product(productName: "Яблоко", price: 120)
//let product4 = Product(productName: "Порошок", price: 800)
//
let orderManager = OrderManager()
//
let productsScreen = ProductsScreen(orderManager: orderManager)
//productsScreen.addProductToCart(product: product1)
//productsScreen.addProductToCart(product: product2)
//productsScreen.addProductToCart(product: product3)
//productsScreen.addProductToCart(product: product4)

productsScreen.viewAllProducts()

productsScreen.removeProductFromCart(at: 1)
productsScreen.removeProductFromCart(at: 2)

productsScreen.viewAllProducts()

