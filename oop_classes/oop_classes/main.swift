//
//  main.swift
//  oop_classes
//
//  Created by Aruuke Turgunbaeva on 12/11/23.
//

import Foundation

class Student{
    var name = ""
    var age = 0
    
    func study(course: String, group: String, year: Int){
        print("\(name) studies at the \(course) course, group: \(group), \(year) year.")
    }
}

let student_1 = Student()
student_1.name = "Aruuke"
student_1.age = 21
student_1.study(course: "Data Analysis", group: "DA2225", year: 2)


var book1: Book = Book(title: "Бактылуулук формуласы", author: "Чубак Ажы Жалилов", price: 250.0)
book1.title = "Очпос омур"
book1.price = 300.0
var book2 = Book(title: "Ант", author: "Нуржигит Кадырбеков", price: 350.0)
book2.changeTitle(title: "Япон кереметинин сыры")

var book3 = Book(title: "Маркумдар уну", author: "Кочкон Сактанов", price: 500.0)
book3.changePrice(price: 590.0)

dump(book1)
dump(book2)
dump(book3)
print(book1.author, book1.title, book1.price)

var CatalogScreen = catalogScreen()
CatalogScreen.addBook(book: book1)
CatalogScreen.addBook(book: book2)
CatalogScreen.addBook(book: book3)

CatalogScreen.showList()

CatalogScreen.removeBook(title: "Маркумдар уну")
CatalogScreen.showList()

