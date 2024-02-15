//
//  Employee.swift
//  Company
//
//  Created by Aruuke Turgunbaeva on 26/11/23.
//


import Foundation

class Employee{
    let name: String
    let department: String
    let salary: Double
    
    init(name: String, department: String, salary: Double) {
        self.name = name
        self.department = department
        self.salary = salary
    }
    
    func describeRole(){
        print("My name is \(name). I work in \(department) department")
    }
}

class Manager: Employee{
    let workCity: String
    var projects: [String]
    
    init(workCity: String, projects: [String], name: String, department: String, salary: Double) {
        self.workCity = workCity
        self.projects = projects
        
        super.init(name: name, department: department, salary: salary)
    }
    
    override func describeRole() {
        print("My name is \(name). I work in \(department) department located in \(workCity). I have projects as \(projects)")
    }
}

class Developer: Employee{
    let level: String
    let devType: String
    
    init(name: String, department: String, salary: Double, level: String, devType: String) {
        self.level = level
        self.devType = devType
        
        super.init(name: name, department: department, salary: salary)
    }
    
    override func describeRole() {
        print("My name is \(name). I work in \(department) department. I am \(level) \(devType) developer.")
    }
}

class Intern: Employee{
    let internshipPeriod: Int
    
    init(name: String, department: String, salary: Double, internshipPeriod: Int) {
        self.internshipPeriod = internshipPeriod
        
        super.init(name: name, department: department, salary: salary)
    }
    
    override func describeRole() {
        print("My name is \(name). I am an intern in \(department) department for \(internshipPeriod) months.")
    }
}
