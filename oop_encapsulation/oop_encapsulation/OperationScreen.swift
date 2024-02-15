//
//  OperationScreen.swift
//  oop_encapsulation
//
//  Created by Aruuke Turgunbaeva on 3/12/23.
//

import Foundation

class OperationScreen{
    
    private var accounts: [BankAccount] = [BankAccount(name: "Aruuke Turgunbaeva"), BankAccount(name: "Aiken Nurbolotova"), BankAccount(name: "Nurbolot Tashbaev")]
    
    func operation(){
        
        for account in accounts {
            account.deposit(amount: Double.random(in: 1...100000))
            print(account.getRequisite())
            print(account.getBalance())
        }
        
        print("Укажите номер счета: ")
        let requisite = readLine()
        
        print("Укажите сумму: ")
        let amount = readLine()
        
        var id: Int?
        
        if let requisite = requisite{
            var isFound = false
            for account in accounts {
                if requisite == account.getRequisite(){
                  isFound = true
                    id = account.getID()
                    break
                }else{
                    isFound = false
                }
            }
            
            var index = 0
            //var isFound2 = false
            if isFound == true && id != nil{
                for i in 0...accounts.count-1 {
                    if accounts[i].getID() == id!{
                        break
                    }else{
                        
                    }
                    index = i
                }
            }
            accounts[index].withdraw(amount: Double(amount!)!)
            print(accounts[index].getBalance())
        }
    }
    
    
    
    
    
    
    
    
    
//    var bankAccount = BankAccount()
//
//    bankAccount.deposit(amount: 10000)
//
//    print(bankAccount.getBalance())
//
//    bankAccount.withdraw(amount: 5000)
//
//    print(bankAccount.getBalance())

}
