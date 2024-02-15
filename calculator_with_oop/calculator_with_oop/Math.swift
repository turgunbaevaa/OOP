//
//  Math.swift
//  calculator_with_oop
//
//  Created by Aruuke Turgunbaeva on 13/11/23.
//

import Foundation

class Math{
    func addNumbers(_ num1: Double, _ num2: Double ) -> Double{
        return num1 + num2
    }
    
    func substractNumbers(_ num1: Double, _ num2: Double ) -> Double{
        return num1 - num2
    }
    
    func multiplyNumbers(_ num1: Double, _ num2: Double ) -> Double{
        return num1 * num2
    }
    
    func divideNumbers(_ num1: Double, _ num2: Double ) -> Double?{
        guard num2 != 0 else {
            print("Error: Невозможно делить на ноль.")
            return nil
        }
        return num1 / num2
    }
}
