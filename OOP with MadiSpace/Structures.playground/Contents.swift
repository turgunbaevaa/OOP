import UIKit

//Классы - это ссылочный тип данных (Reference Type)
//Экземпляры класса хранят ссылку на область памяти в которой содержится объект
//Структура - это значимый тип данных (Value Type)
//Экземпляры структуры хранят значение

class Person{
    let name: String
    var phone: Int
    
    init(name: String, phone: Int) {
        self.name = name
        self.phone = phone
    }
    
    func change(phone: Int){
        self.phone = phone
    }
}

//Для структуры не надо писать инициализатор
//Если мы меняем любое значение внутри структуры, то это значит мы меняем структуру
//Если мы меняем любое значение внутри структуры с методами этой же стуктуры то метод должны указать как мутирующий - который позвояет изменить саму структуру
//В структурах нету полиморфизма, наследования

struct User{
    let name: String
    var phone: Int
    
    mutating func change(phone: Int){ //Это метод который приводит к изменению самой структуры. Самого значения экземпляра в котором этот метод объявлен
        self.phone = phone
    }
}


let person = Person(name: "Aruu", phone: 76764868230) //ссылочный
let user = User(name: "Aiken", phone: 704816690) //константа

var person2 = Person(name: "Milena", phone: 704816696)
var user2 = User(name: "Ali", phone: 996702657849)
person.phone = 996702077223

//person = person2 - Cannot assign to value: 'person' is a 'let' constant

person2 = person //У нас теперь они оба ссылаются на один и тот же объект

person.phone
person.name

person2.phone
person2.name

user2 = user
user.name
user2.name
user2.phone = 5638563753
user.phone





