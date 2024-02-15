//
//  main.swift
//  Library
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

//На примере учебного проекта с заказом еды реализовать проект с библиотекой. Должно быть 3 объекта: читатель, библиотекарь, каталог. Логика должна запросить книгу с названием, библиотекарь должна передать каталогу, каталог должен совершить поиск среди книг. Для книги выделите структуру Book. Если книга есть, то клиент получает книгу, если книги нет, то уходит домой.

var reader = Reader()
var librarian = Librarian()
var catalog = Catalog()

reader.librarian = librarian
librarian.reader = reader
librarian.catalog = catalog
catalog.librarian = librarian

reader.makeTheRequest(requestBook: "Anna Karenina")
reader.makeTheRequest(requestBook: "Pride and prejudice")
reader.makeTheRequest(requestBook: "Atomic Habits")

