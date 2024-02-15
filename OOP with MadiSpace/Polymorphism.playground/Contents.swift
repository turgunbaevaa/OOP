import UIKit

//Полиморфизм это способность классов переопределять методы классов родителей. Методы, свойства, инициализаторы
class Teacher{
    let name: String
    var description: String{
        return "Привет, меня зовут \(name). Я учитель."
    }
    
    init(name: String) {
        self.name = name
    }
    
    func teach(){
        print("Я учу людей прямо сейчас")
    }
}


class iOSTeacher: Teacher{
    let speciality: String
    
    init(name: String, speciality: String){
        self.speciality = speciality
        super.init(name: name)
    }
    
    override init(name: String) {
        self.speciality = "iOS"
        super.init(name: name)
    }
    
    override var description: String{
        return "Привет! Меня зовут \(name). Я учитель по iOS разработке. Моя специальность - \(speciality)"
    }
    
    func swiftCoding(){
        print("Я программирую на Swift")
    }
    
    override func teach() {
        print("Я учу людей iOS разработке прямо сейчас!")
    }
    
    func teach(hours: Int){ //Перегрузка функции
        print("Я учу людей ближайшие \(hours) часа/часов.")
    }
      
    
}

let teacher = Teacher(name: "Anna")
teacher.name
teacher.description
teacher.teach()

let iosTeacher = iOSTeacher(name: "Mariya", speciality: "Full Stack")
iosTeacher.speciality
iosTeacher.description
iosTeacher.swiftCoding()
iosTeacher.teach()

let iosTeacher2 = iOSTeacher(name: "Андрей")
iosTeacher2.speciality
iosTeacher2.description
iosTeacher2.teach()
iosTeacher2.teach(hours: 3)

