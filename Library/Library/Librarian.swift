//
//  Librarian.swift
//  Library
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

protocol LibrarianProtocol {
    
    func pass(title: String)
    func getTheBook()
    func noBook()
}

class Librarian: LibrarianProtocol {
    
    var reader: ReaderProtocol?
    var catalog: CatalogProtocol?
    
    func pass(title: String) {
        print("Librarian submit request - \(title) to the catalog!")
        catalog?.searchBook(title: title)
    }
    
    func getTheBook() {
        print("The librarian hands the book to the reader!")
        reader?.takeTheBook()
    }
    
    func noBook() {
        print("The librarian reports that the book is no longer available! ")
        reader?.goToHome()
    }
}
