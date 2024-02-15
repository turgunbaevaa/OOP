import UIKit

//Принципы ООП
//Inheritance - Наследование - это когда классы могут пораждать своих наследников и являться наследниками других классов

class Vehicle{ //Этот класс является абстрактным и сразу не скажешь какое это транспортное средство. И для того чтобы конкретизировать классы и есть наследование
    let brand: String
    let massa: Int
    
    init(brand: String, massa: Int){
        self.brand = brand
        self.massa = massa
    }
    func go(){
        print("It's going!")
    }
}

//Экземпляр - это обычная переменная либо константа которая хранит в себе экземпляр какого либо класса
let vehicle = Vehicle(brand: "Bycicle", massa: 12)
vehicle.massa
vehicle.brand
vehicle.go()

class Car: Vehicle{ //Является классов наследником класса Vehicle
    let carType: String
    let enginePower: Int
    
    init(brand: String, massa: Int, carType: String, enginePower: Int) {
        self.carType = carType //Сперва нужно инициализировать все свойства класса потом класса родителя
        self.enginePower = enginePower
        //Super - это значит обращение к классу родителя
        super.init(brand: brand, massa: massa)
        
    }
    
    func klakson(){
        print("Beep-Beep")
    }
}

let bmw = Car(brand: "BMW", massa: 1500, carType: "Sedan", enginePower: 300)
let audi = Car(brand: "Audi", massa: 1600, carType: "City-type", enginePower: 220)

var cars: [Car] = [bmw, audi]

//Если мы хотим запретить наследовать определенные классы, то вначале слово class нужно добавить final
final class sportCar: Car{
    let maxSpeed: Int
    
    init(brand: String, massa: Int, enginePower: Int, maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        
        super.init(brand: brand, massa: massa, carType: "Sport Car", enginePower: enginePower) //CarType - задан по дефолту ко всем
    }
}

let ferrari = sportCar(brand: "Ferrari", massa: 1800, enginePower: 430, maxSpeed: 340)

let porsche = sportCar(brand: "Porsche", massa: 1700, enginePower: 370, maxSpeed: 320)


bmw.massa
bmw.klakson()
bmw.go()
bmw.brand
bmw.carType
ferrari.carType

cars.append(ferrari)
cars.append(porsche)

// cars[3].maxSpeed - мы не сможем посмотреть на максспид потому что массив думает что все элементы рассматриваются только как обычный Car как задано в массиво, а не SportCar

cars[2].klakson()
(cars[3] as! sportCar).maxSpeed //могут быть ошибки, например когда обычный car захотим сделать SportCar. Можно использовать только тогда когда вы точно знаете

var sportCars = [sportCar]()

for car in cars{
    if car is sportCar{
        sportCars.append((car as! sportCar))
    }
}

for sportCar in sportCars {
    print(sportCar.brand)
}
