//
//  CalculateScreen.swift
//  calculator_with_oop
//
//  Created by Aruuke Turgunbaeva on 25/11/23.
//

import Foundation

class CalculateScreen: Screen{
    let math = Math()
    let historyScreen = HistoryScreen()
    
    func startCalculations(){
        while true {
            guard let userInput = getCalculationInput() else {
                continue
            }
            if userInput.0.lowercased() == "q" {
                break
            }
            
            let (operation, number1, number2) = userInput
            
            var result: Double = 0
            var operationDescription = ""
            
            switch operation {
            case "+":
                result = math.addNumbers(number1, number2)
                operationDescription = "\(number1) + \(number2) = \(result)"
                historyScreen.addHistory(operationDescription)
                print("Результат сложения: \(result)")
            case "-":
                result = math.substractNumbers(number1, number2)
                operationDescription = "\(number1) - \(number2) = \(result)"
                historyScreen.addHistory(operationDescription)
                print("Результат вычитания: \(result)")
            case "*":
                result = math.multiplyNumbers(number1, number2)
                operationDescription = "\(number1) * \(number2) = \(result)"
                historyScreen.addHistory(operationDescription)
                print("Результат умножения: \(result)")
            case "/":
                result = math.divideNumbers(number1, number2)!
                operationDescription = "\(number1) / \(number2) = \(result)"
                historyScreen.addHistory(operationDescription)
                print("Результат деления: \(result)")
            default:
                print("Неизвестная операция.")
            }
        }
        
        
    }
}
