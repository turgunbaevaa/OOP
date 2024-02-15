import UIKit

// Общий тип данных который представлен несколькими ассоциативными значениями.  Т.е общий тип данных для ассоцированных/ассоциативных значений
 
enum DayTime{
    case night
    case morning
    case afternoon
    case evening
}

var currentTime = DayTime.evening
currentTime = DayTime.night

let day: DayTime = .morning

switch currentTime{
    
case .night:
    print("Сплю")
case .morning:
    print("Завтракаю")
case .afternoon:
    print("Учусь")
case .evening:
    print("Кушаю")
}
 
//Ассоциированные значения - это значения которые могут ассоциироваться с каждым из кейсов.

enum Profession{
    case Developer(String, String, Int)
    case Teacher(String, String)
    case WebDesigner(String, Int)
    case cleaningManager(String)
}

let myProfession = Profession.Developer("Aruu", "iOS Developer", 1)
let designer = Profession.WebDesigner("Alexandra", 40)

func check(prof: Profession){
    switch prof{
    case .Developer(let name,let speciality, let experience):
        print("Меня зовут \(name), я работаю \(speciality) разработчиком вот уже \(experience) лет")
    case .Teacher(let name, let speciality):
        print("Меня зовут \(name), я работаю как учитель \(speciality)")
    case .WebDesigner(_, _):
        print("Web Designer")
    case .cleaningManager(_):
        break
    }
}

check(prof: myProfession)
check(prof: designer)


//Чистые значения -

enum myPetName: String, CaseIterable {
    case dog = "Vaska"
    case cat = "Tuzik"
    case parrot = "Tenni"
}

var myCat = myPetName.cat
var myCatName = myCat.rawValue

var myPets = myPetName.allCases

print(myPets)

for pet in myPets{
    print(pet.rawValue)
}


enum Season: Int{
    case winter = 1, spring, summer, autumn
    
    var label: String{
        switch self{
        case .winter:
            return "Winter"
        case .spring:
            return "Spring"
        case .summer:
            return "Summer"
        case .autumn:
            return "Autumn"
        }
    }
    init (_ value: String){
        switch value{
        case "Winter":
            self = .winter
        case "Spring":
            self = .spring
        case "Summer":
            self = .summer
        case "Autumn":
            self = .autumn
        default:
            self = .winter        }
    }
    
    func printLabel(){
        print(self.label)
    }
}

let season = Season("Winter")
season.printLabel()
