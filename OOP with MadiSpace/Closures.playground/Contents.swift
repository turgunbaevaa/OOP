import UIKit
import Foundation

let greeting = {
    print("Hello World!")
}

greeting()
greeting()
greeting()
greeting()
greeting()


let message = { (user: String?, message: String) in
    if let user = user{
        print("\(user), \(message)")
    }else{
        print(message)
    }
}

message("Danil", "Hello! How are you doing?")
message(nil, "Hello everybody")


let sum = { (num1: Int, num2: Int) -> Int in
    let sumResult = num1 + num2
    return sumResult
}

let substract = { (x: Int, y: Int) -> Int in
    let subtractResult = x - y
    return subtractResult
}

func operation(a: Int, b: Int, action: (Int, Int) -> Int){
    let result = action(a, b)
    print(result)
}

operation(a: 5, b: 40){ a, b in
    a * b
}

operation(a: 90, b: 542, action: sum)
operation(a: 4532, b: 7453, action: substract)


sum(3, 56)
substract(645673, 3726)

//func add(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}

let add: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    a + b
}

add(20, 30)

func customAdd(a: Int, b: Int, using function: (Int, Int)-> Int ) -> Int {
    function(a, b)
}

customAdd(a: 20, b: 30) { <#Int#>, <#Int#> in
    <#code#>
}
