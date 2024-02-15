//
//  Reader.swift
//  Library
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

protocol ReaderProtocol {
    func makeTheRequest(requestBook title: String)
    func takeTheBook()
    func goToHome()
}

class Reader: ReaderProtocol {
    
    var librarian: LibrarianProtocol?
    
    func makeTheRequest(requestBook title: String) {
        print("A reader requests the book - \(title)!")
        librarian?.pass(title: title)
    }
    func takeTheBook() {
        print("The reader gets the book!")
    }
    
    func goToHome() {
        print("The reader is going home!")
    }
}
