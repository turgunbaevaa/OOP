//
//  PersonalTask.swift
//  TaskManager
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

class PersonalTask: Task {
    var title: String
    var isCompleted: Bool
    var location: String
    
    func completeTask() {
        isCompleted = true
    }
    
    init(title: String, location: String) {
        self.title = title
        self.isCompleted = false
        self.location = location
    }
}
