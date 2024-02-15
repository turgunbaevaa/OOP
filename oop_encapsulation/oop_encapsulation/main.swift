//
//  main.swift
//  oop_encapsulation
//
//  Created by Aruuke Turgunbaeva on 3/12/23.
//

import Foundation

//2) Создать класс OrderManager и класс Product, который управляет заказами, скрывая детали реализации от внешнего использования. Определите класс OrderManager с приватным массивом заказов.
//Предоставьте публичные методы для добавления заказа, удаления заказа и получения информации о всех заказах.  Создайте ProductsScreen и сделайте возможность добавления товара в корзину, удаление и просмотр информации о товарах.

var bankAccount = BankAccount(name: "Aruuke")

bankAccount.deposit(amount: 10000)
print(bankAccount.getBalance())
print(bankAccount.getRequisite()!)

let operationScreen = OperationScreen()
operationScreen.operation()
