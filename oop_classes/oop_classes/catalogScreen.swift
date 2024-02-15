//
//  catalogScreen.swift
//  oop_classes
//
//  Created by Aruuke Turgunbaeva on 13/11/23.
//

import Foundation

class catalogScreen{
    var books: [Book] = []
    
    func addBook(book: Book){
        books.append(book)
    }
    
    func removeBook(title: String){
        var isFound = false
        var index = 0
        for book in books {
            index += 1
            if title == book.title{
                isFound = true
                break
            }else{
                isFound = false
            }
        }
        
        if isFound{
            books.remove(at: index-1)
        }else{
            print("Такой книги нет в каталоге")
        }
    }
     
    
    func showList(){
        for book in books{
            print("Title: \(book.title)")
            print("Author: \(book.author)")
            print("Price: \(book.price)")
            print("---------------------")

        }
    }
}

