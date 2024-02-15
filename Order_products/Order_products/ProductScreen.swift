//
//  ProductScreen.swift
//  Order_products
//
//  Created by Aruuke Turgunbaeva on 3/12/23.
//

import Foundation

class ProductsScreen {
    var orderManager: OrderManager
    
    init(orderManager: OrderManager) {
        self.orderManager = orderManager
    }
    
    func addProductToCart(product: Product) {
        orderManager.addOrder(product: product)
        print("Продукт - \(product.productName) - добавлен в корзину.")
    }
    
    func removeProductFromCart(at index: Int) {
        orderManager.removeOrder(at: index)
        print("Продукт удален из корзины.")
    }
    
    func viewAllProducts() {
        let allOrders = orderManager.getAllOrders()
        
        if allOrders.isEmpty {
            print("Нет продуктов в корзине.")
        } else {
            print("Продукты в корзине:")
            for (index, product) in allOrders.enumerated() {
                print("\(index + 1). \(product.productName) - \(product.price) сом")
            }
        }
    }
}
