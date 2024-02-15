//
//  OrderManager.swift
//  Order_products
//
//  Created by Aruuke Turgunbaeva on 3/12/23.
//

import Foundation

class OrderManager {
    private var orders: [Product] = []
    
    func addOrder(product: Product) {
        orders.append(product)
    }
    
    func removeOrder(at index: Int) {
        if index >= 0 && index < orders.count {
            orders.remove(at: index)
        } else {
            print("Invalid index. Cannot remove order.")
        }
    }
    
    func getAllOrders() -> [Product] {
        return orders
    }
}
