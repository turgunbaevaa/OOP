//
//  Animal.swift
//  oop_polymorphism
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

class Animal{
    var name: String
    var type: String
    var typeOfMoving: String
    let isNotTalking: Bool = false
    var weight: Float

    
    init(name: String, type: String, typeOfMoving: String, weight: Float) {
        self.name = name
        self.type = type
        self.typeOfMoving = typeOfMoving
        self.weight = weight
    }
    
    
    
    
}
