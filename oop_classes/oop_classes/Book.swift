//
//  Book.swift
//  oop_classes
//
//  Created by Aruuke Turgunbaeva on 12/11/23.
//

import Foundation

class Book{
    var title: String
    var author: String
    var price: Float
    
    init(title: String, author: String, price: Float) { // инициализатор или конструктор класса
        self.title = title // Бери title с класса Book и равно title которая внутри инициализатора
        self.author = author
        self.price = price
    }
    
    func changePrice(price: Float){
        self.price = price
    }
    
    func changeTitle(title: String){
        self.title = title
    }
    
}
