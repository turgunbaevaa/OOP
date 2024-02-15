//
//  main.swift
//  Protocols
//
//  Created by Aruuke Turgunbaeva on 5/12/23.
//

import Foundation

protocol Drive {
    var speed: Double { get }
    func drive()
}


class Person: Drive{
    var speed: Double = 50
    
    func drive() {
        print("Drive")
    }
    var name: String = "Alex"
}

var person = Person()
print(person.drive())
print(person.name)
