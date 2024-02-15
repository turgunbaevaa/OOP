import UIKit

//Protocols - Протоколы

protocol FullyNamed{
    var fullname: String {get}
}

struct Person: FullyNamed{
    var fullname: String
    var age: Int
    var phoneNumber: Int
}

class Company: FullyNamed {
    var fullname: String
    var director = "Tim Kook"
    
    init(prefix: String, title: String) {
        self.fullname = "\(prefix) \(title)"
    }
}

let alex = Person(fullname: "Alexandr", age: 25, phoneNumber: 996704816696)
let alina = Person(fullname: "Alina", age: 23, phoneNumber: 996704816691)
let apple = Company(prefix: "LLC", title: "Apple")
let google = Company(prefix: "LLC", title: "Google")


class Bank: Company{
    var clients = [FullyNamed]()
}


let bank = Bank(prefix: "OOO", title: "Alpha-Bank")

bank.clients.append(alex)
bank.clients.append(alina)
bank.clients.append(apple)
bank.clients.append(google)
google.director = "Sundar Pichai"

for client in bank.clients{
    print(client.fullname)
    
    if client is Person{
        print((client as! Person).age)
        print((client as! Person).phoneNumber)
    }else if client is Company{
        print((client as! Company).director)
    }
}

enum Speciality{
    case iOS, android, python, java
}

protocol Human{
    var name: String {get}
}

protocol Developer{
    var speciality: Speciality {get}
    var experienceInYears: Int {get}
}

protocol Teacher{
    var speciality: Speciality {get}
    func teach(theme: String)
}

struct DevTeacher: Human, Developer, Teacher{
    
    var name: String
    var speciality: Speciality
    var experienceInYears: Int
    
    func teach(theme: String) {
        print("Учу людей. Тему урока: \(theme)")
    }
}

let vlad = DevTeacher(name: "Vlad", speciality: .iOS, experienceInYears: 6)
vlad.name
vlad.teach(theme: "Protocols")


protocol Named{
    var title: String { get }
    
}

protocol Location {
    var lat: Double { get }
    var lon: Double { get }
}

struct City: Location, Named{
    var lat: Double
    var lon: Double
    var title: String
}

struct Club: Location, Named{
    var lat: Double
    var lon: Double
    var title: String
}

struct Brand: Named{
    var title: String
}

func concert(place: Location & Named, band: String) {
    print("Группа \(band) выступает в \(place.title). Координаты для GPS: \(place.lat), \(place.lon)")
}

let moscow = City(lat: 56.748764, lon: 56.748764, title: "Moscow")
let mainClub = Club(lat: 65.6537, lon: 65.6537, title: "Глав клуб")
let brand = Brand(title: "Qoorchaq")

concert(place: moscow, band: "BlackPink")
concert(place: mainClub, band: "Город 345")


//Pattern Delegate - Паттерн делегат
//Это тот кто ставит задачу
//Тип делегата - протокол который описывает, какими свойствами и методами должен обладать делегат
//Делегат - это тот кто исполняет задачу

protocol CoffeeMakerDelegate {
    func makeCoffee(amount: Int) -> Int
}

class Client {
    var name = "Aruu"
    var coffeeMaker: CoffeeMakerDelegate? // Используем опциональный тип
    
    func visitCoffeeHouse(coffeeMaker: CoffeeMakerDelegate) {
        self.coffeeMaker = coffeeMaker
    }
    
    func goOutCoffeeHouse() {
        self.coffeeMaker = nil
    }
    
    func buyCoffee(amount: Int) {
        guard let delegate = coffeeMaker else {
            print("Вы не в кофейне")
            return
        }
        
        let numberOfCoffees = delegate.makeCoffee(amount: amount)
        print("Вы купили \(numberOfCoffees) чашек кофе")
    }
}

struct Waiter: CoffeeMakerDelegate {
    func makeCoffee(amount: Int) -> Int {
        let price = 350
        let count = amount / price
        return count
    }
}

struct Barista: CoffeeMakerDelegate {
    func makeCoffee(amount: Int) -> Int {
        let price = 100
        let count = amount / price
        return count
    }
}


let waiter = Waiter()

let client = Client()
client.visitCoffeeHouse(coffeeMaker: waiter)

client.buyCoffee(amount: 2000) // Пример покупки кофе
client.goOutCoffeeHouse()

let barista = Barista()
client.visitCoffeeHouse(coffeeMaker: barista)
client.buyCoffee(amount: 400)
client.goOutCoffeeHouse()

client.buyCoffee(amount: 500)
