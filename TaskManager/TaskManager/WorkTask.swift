//
//  WorkTask.swift
//  TaskManager
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

protocol WorkTaskProtocol {
    var deadline: String { get }
}

class WorkTask: Task, WorkTaskProtocol {
    var deadline: String
    
    
    var title: String
    var isCompleted: Bool
    
    func completeTask() {
        isCompleted = true
    }
    
    
    
    init(title: String, deadline: String ) {
        self.title = title
        self.isCompleted = false
        self.deadline = deadline
    }

}
