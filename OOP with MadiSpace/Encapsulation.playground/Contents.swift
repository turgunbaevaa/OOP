import UIKit

//Инкапсуляция - это принцип размещения данных и методов работы с этими данными в одном объекте. Разграничение доступа к этим данным.

class Wallet{
    
    static let shared = Wallet() //single tone
    
    private var balance = 0 //Мы тут проинскапсулировали баланс, разграничили доступ к нему
    
    private init(){ }  //У нас есть только один инициализатор
    
    func add(cash: Int){
        self.balance += cash
        print(self.balance )
    }
    
    func withdraw(cash: Int) -> Int{
        
        guard cash <= balance else {
            return 0
        }
        balance -= cash
        return cash
    }
    
    func getBalance()-> Int{
        return self.balance
    }
    
}

//var wallet = Wallet()
//
//wallet.add(cash: 5000)
//wallet.withdraw(cash: 10000)
//wallet.withdraw(cash: 2000)
//wallet.withdraw(cash: 3000)
//print(wallet.getBalance())

class Shop {
    
    var wallet = Wallet.shared
    
    
}

class Job {
    
    var wallet = Wallet.shared
    
    
}

var market = Shop()
var company = Job()
company.wallet.add(cash: 15000)
let checkSum = market.wallet.withdraw(cash: 3000)
print(checkSum)
company.wallet.getBalance()
market.wallet.getBalance()

class Person {
    
    let wallet = Wallet.shared
    var goods = [String]()
    
    private func get(goods: String) {
        self.goods.append(goods)
        print("Товар \(goods) куплен!")
    }
    
    private func pay(money: Int){
        self.wallet.withdraw(cash: money)
        print("Сумма чека: \(money) сомов")
    }
    
    func buy(goods: String, price: Int){
        guard price <= wallet.getBalance() else{
            return
        }
        get(goods: goods)
        pay(money: price)
    }
}

let vasya = Person()
print(vasya.goods)
vasya.wallet.getBalance()

company.wallet.add(cash: 80000)
vasya.wallet.getBalance()
vasya.buy(goods: "iPhone 13 mini", price: 69990)
vasya.wallet.getBalance()
vasya.buy(goods: "Harry Poter", price: 2500)
vasya.wallet.getBalance()
