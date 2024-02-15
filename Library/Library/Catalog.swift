//
//  Catalog.swift
//  Library
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

protocol CatalogProtocol {
    func searchBook(title: String)
}

class Catalog: CatalogProtocol {
    
    var librarian: LibrarianProtocol?
    
    var books: [Book] = [Book(title: "Pride and prejudice", author: "Jane Austen"),
                         Book(title: "Anna Karenina", author: "L. Tolstoi"),
                         Book(title: "Sense and sensibility", author: "Jane Austen"),
                         Book(title: "Content", author: "A. Nordan")]
    
    func searchBook(title: String) {
        var isBookFound = false
        
        for book in books {
            if book.title == title {
                print("The catalog searches for and finds the book - \(title)!")
                librarian?.getTheBook()
                isBookFound = true
            }
        }
        
        
        if !isBookFound {
            print("The catalog searches for and doesn't find the book - \(title)!")
            librarian?.noBook()
        }
        
        print("---------------------")

    }
    
}
