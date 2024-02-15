//
//  Screen.swift
//  calculator_with_oop
//
//  Created by Aruuke Turgunbaeva on 13/11/23.
//

import Foundation

class Screen{
    func getCalculationInput() -> (String, Double, Double)? {
        print("Введите операцию (+, -, *, /). Для завершения работы введите q:")
        guard let operation = readLine(), ["+", "-", "*", "/"].contains(operation) || operation.lowercased() == "q" else {
            print("Ошибка ввода операции.")
            return nil
        }
        
        if operation.lowercased() == "q" {
            return ("q", 0.0, 0.0) // Возвращаем фиктивные значения для операции "q"
        }
        

        print("Введите первое число:")
        guard let input1 = readLine(), let number1 = Double(input1) else {
            print("Ошибка при введении первого числа")
            return nil
        }
        
        if input1.lowercased() == "q" {
            return nil
        }
        
        print("Введите второе число: ")
        guard let input2 = readLine(), let number2 = Double(input2) else {
            print("Ошибка при введении второго числа")
            return nil
        }
        
        
        return(operation, number1, number2)
        
    }
}


