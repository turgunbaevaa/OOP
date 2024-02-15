import UIKit

var greeting = "Hello, playground"

// Класс - это ссылочный тип данных в Swift - хранит ссылку на определенную область памяти

//Объект - это экземпляр класса

class Player{
    let name: String //свойство //Переменная у нас константа, потому что будет странно если сегодня он будет Егором, завтра Федором, а после завтра вообще Аленой
    var level: Int = 0
    
    init(name: String){
        self.name = name //Self ссылается на name, потом говорит что этот name будет равен name которая внутри инициализатора
    }
    
    init(name: String = "guest", level: Int = 0){
        self.level = level
        self.name = name
    }
    
    //методы - это те же самые функции
    func printInfo(){
        print("Имя игрока: \(self.name)")
        print("Уровень игрока: \(self.level)")
    }
    
    func levelUp(count: Int){
        self.level += count
    }
    
    func levelDown(count: Int){
        guard count < self.level else{
            self.level = 0
            return
        }
        self.level -= count
    }
}

// Экземпляры класса:

var player1 = Player(name: "Alena") //
player1.level = 5
player1.levelDown(count: 3)
player1.level

var player2 = Player(name: "Alex")
var player3 = Player()
var player4 = Player(name: "Bob", level: 4)
player1.printInfo()
//player1.level = 4 // осуществляем доступ к свойствам класса через точку
//
//player1.level
//player1.name

var players: [Player] = [player1, player2, player3, player4] //Массив типа PLayers

for player in players{
    print("\(player.name), level: \(player.level)")
}

//менеджер по продажам
//звонков не менее 130
//план продаж не менее 300000
//за каждый звонок 50 р
//+12% от продаж

class SalesManager{
    //СВОЙСТВА ТИПА / КЛАССВОВЫЕ СВОЙСТВА
    //ХРАНИМЫЕ (СТАТИЧЕСКИЕ)
    static var phoneModel = "iPhone SE 2" //static говорит о том что это свойство именно класса. У нас нету доступа к таким свойствам через экземпляр, не могут наследоваться
    
    //ВЫЧЕСЛЯЕМЫЕ (КЛАССОВЫЕ)
    class var companyTitle: String {return "Zara"} //могут наследоваться
    
    
    //СВОЙСТВА ЭКЗЕМПЛЯРА: относится к экземпляру, а не к классу. Добираемся через экземпляр
    //хранимые свойства (stored properties)
    var salaryBase = 15000
    var calls = 0 {
        willSet {
            print("Вы соверишили \(newValue) звонков. Предыдущее значение: \(calls)")
        }
        didSet {
            if calls >= 130{
                print("KPI по звонкам выполнен! Количество звонков: \(calls)")
            }
        }
    }
    
    
    var salesAmount = 0 {
        willSet {
            print("Вы продали товар на сумму \(newValue) сомов. Предыдущее значение \(salesAmount)")
        }
        didSet {
            if salesAmount >= 300000{
                print("KPI по продажам выполнен! Сумма продаж: \(salesAmount)")
            }
        }
    }
    
    
    
    var sanctionsAmount = 0
    
    //вычисляемые свойства (COMPUTED PROPERTIES)
    var motivation: Int{
        if calls>=130 && salesAmount >= 300000{
            let motiv = self.calls * 50 + salesAmount * 12 / 100
            return motiv
        }else{
            return 0
        }
    }
    
    var salaryAmount: Int{
        var result = salaryBase + motivation - sanctionsAmount
        guard result >= salaryBase/2 else{
            result = salaryBase/2
            return result
        }
        return result
    }
    
    

    
}


SalesManager.phoneModel
SalesManager.phoneModel = "iPhone XR"
SalesManager.phoneModel


//Inits

class Car{
    let brandModel: String
    let wheelsCount: Int
    var color = "White"
    
    //Инициализатор по умолчанию
    init(brandModel: String, wheelsCount: Int = 4){
        self.brandModel = brandModel
        self.wheelsCount = wheelsCount
    }
    //Memberwise-инициализатор
    init(brandModel: String, wheelsCount: Int, color: String){
        self.brandModel = brandModel
        self.wheelsCount = wheelsCount
        self.color = color
    }
    
    //Failabe-инициализатор
    init?(brand: String, model: String, wheelsCount: Int){
        if wheelsCount < 4 {
            return nil // Return nil if wheels count is less than 4
        } else {
            self.wheelsCount = wheelsCount
            self.brandModel = "\(brand) \(model)"
        }
    } //Объект может выбрасывать nil либо объект
    
    //"Удобный" инициализатор
    convenience init(brandModel: String, color: String){
        self.init(brandModel: brandModel)
        self.color = color
    }
    
}

let mers = Car(brandModel: "BMW X5", wheelsCount: 6)



 
