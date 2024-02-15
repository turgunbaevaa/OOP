//
//  main.swift
//  closures_hw
//
//  Created by Aruuke Turgunbaeva on 6/12/23.
//

import Foundation

//Составить замыкание, которое принимает массив String. Придумать блоки кода, которые удовлетворяют условиям. Один блок кода должен посчитать общее кол-во всех символов в массиве. Другой блок кода должен вывести только те слова, у которых кол-во букв не меньше 4 и не больше 6.

let countTotalCharacters: ([String]) -> Int = { array in
    var totalCharacters = 0
    for word in array{
        totalCharacters += word.count
    }
    return totalCharacters
}

let stringArray = ["iMac", "iPad", "iPhone", "iWatch", "Macbook"]
print(countTotalCharacters(stringArray))

let filterWordsClosure: ([String]) -> [String] = { array in
    return array.filter { word in
        return word.count >= 4 && word.count <= 6
    }
}

let filteredWords = filterWordsClosure(stringArray)
print(filteredWords)
