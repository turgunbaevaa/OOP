//
//  Person.swift
//  oop_inheritance
//
//  Created by Aruuke Turgunbaeva on 25/11/23.
//

import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func study(course: String){
        print("\(name) учиться на \(course) разработчика")
    }
    
    func foreignLanguage(){
        
    }
    
    
}

 
