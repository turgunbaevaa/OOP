//
//  main.swift
//  Company
//
//  Created by Aruuke Turgunbaeva on 26/11/23.
//
//Создать базовый класс Employee c общими свойствами name, department и функцией describeRole(). Cоздать подклассы Manager, Developer, Intern. Добавить отличающиеся свойства в подклассы. Переопределите функцию describeRole(). В main cоздайте массив Employee и вызовите функцию describeRole()

import Foundation

var employees: [Employee] = []

let manager = Manager(workCity: "New York", projects: ["Project A", "Project B"], name: "John", department: "Management", salary: 80000.0)
let developer = Developer(name: "Alice", department: "Development", salary: 60000.0, level: "Senior", devType: "Frontend")
let intern = Intern(name: "Eva", department: "HR", salary: 20000.0, internshipPeriod: 6)

employees.append(manager)
employees.append(developer)
employees.append(intern)

for employee in employees {
    employee.describeRole()
    print("Salary: \(employee.salary)")
    print("------")
}
