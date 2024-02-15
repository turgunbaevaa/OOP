import Cocoa

class Gadget{
    
    let brand: String
    let model: String
    var price: Int
    let color: String
    
    var fullPrice: Int {
        let price = Double(self.price) * 1.1
        
        return Int(price)
    }
    var isOn: Bool = false
    
    init(brand: String, model: String, price: Int, color: String ){
        self.brand = brand
        self.model = model
        self.price = price
        self.color = color
    }
    
    func turnOnOff(){
        isOn.toggle()
        
        if isOn{
            print("\(self.brand) \(self.model) is on")
        }else{
            print("\(self.brand) \(self.model) is off")
        }
    }
    
    
  
    
}

let gadget = Gadget(brand: "MadiSpace", model: "Nimbus-2000", price: 5000, color: "Brown")

gadget.brand
gadget.price
gadget.turnOnOff()
gadget.turnOnOff()

class Phone: Gadget{
    
    let imei: String
    private var phoneNumber: Int?
    
    override var fullPrice: Int {
        let price = Double(self.price) * 1.2
        
        return Int(price)
    }
    
    init(brand: String, model: String, price: Int, color: String, imei: String){
        self.imei = imei
        super.init(brand: brand, model: model, price: price, color: color)
    }
    
    override init(brand: String, model: String, price: Int, color: String) {
        self.imei = "47567365327586974hfgjbv"
        super.init(brand: brand, model: model, price: price, color: color)
    }
    
    
    override func turnOnOff() {
        isOn.toggle()
        
        if isOn{
            print("\(self.brand) \(self.model) is on")
            print("Показан экран для ввода пароля")
        }else{
            print("\(self.brand) \(self.model) is off")
        }
    }
    
    func call(abonent: Int){
        guard let _ = phoneNumber else{
            return
        }
        print("Выполняю звонок по номеру \(abonent)")
        
    }
    
    func insertSim(number: Int){
        self.phoneNumber = number
    }
    
    func getNumber()-> Int?{
        guard let phoneNumber = phoneNumber else{
            return nil
        }
        
        return phoneNumber
    }
    
    private func download(title: String){
        print("Фильм \"\(title)\" был загружен")
    }
    
    func play(title: String){
        download(title: title)
        print("Фильм \"\(title)\" сейчас проигрывается")
    }
    
}


let iPhone = Phone(brand: "iPhone", model: "15 pro max", price: 2000, color: "neon", imei: "63456235482354")
iPhone.turnOnOff()
iPhone.brand
iPhone.model
iPhone.price
iPhone.color
iPhone.imei
iPhone.turnOnOff()
iPhone.getNumber()
iPhone.insertSim(number: 996704816696)
iPhone.getNumber()
iPhone.play(title: "Пираты карибского моря")
gadget.fullPrice
iPhone.fullPrice
gadget.turnOnOff()
iPhone.turnOnOff()
iPhone.turnOnOff()
