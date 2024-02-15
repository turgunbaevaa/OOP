//
//  BankAccount.swift
//  oop_encapsulation
//
//  Created by Aruuke Turgunbaeva on 3/12/23.
//

import Foundation

class BankAccount{
    private var id: Int?
    private var requisite: String?
    private var name: String?
    private var balance: Double = 0.0
    
    func deposit(amount: Double){
        self.balance += amount
    }
    
    init(name: String){ //Тут мы сами должны дать значение когда будем вызывать функцию
        self.name = name
        self.id = generateId()
        self.requisite = generateRequisite()
    }
    
    func withdraw(amount: Double){
        if amount <= balance{
            self.balance -= amount
        }else{
            print("Недостаточно средств")
        }
    }
    
    func getBalance() -> Double{
        return balance
    }
    
    func getID() -> Int? {
        if let id = id{
            return id
        }else{
            return nil
        }
    }
    
    func getRequisite() -> String?{
        if let requisite = requisite{
            return requisite
        }else{
            return nil
        }
    }
    
    private func generateId() -> Int{
        let randomId = Int.random(in: 1...1000000)
        return randomId
    }
    
    private func generateRequisite() -> String{
        var requisite = ""
        for i in 1...4{
            for j in 1...4{
                let randomNumber = Int.random(in: 0...9)
                let stringNumber = String(randomNumber)
                requisite.append(stringNumber)
            }
            if i != 4{
                requisite.append(" ")
            }
        }
        return requisite
    }
    
    
}
