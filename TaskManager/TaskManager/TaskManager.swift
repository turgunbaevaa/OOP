//
//  TaskManager.swift
//  TaskManager
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

class TaskManager {
    var tasks: [Task] = []
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    func removeTask(at index: Int) {
        if index >= 0 && index <= tasks.count {
            tasks.remove(at: index)
            print("Task with \(index) index is deleted!")
            showTasks()
        } else {
            print("Incorrect index!")
            showTasks()
        }
    }
    
    func showTasks() {
        for (index, task) in tasks.enumerated() {
            if let workTask = task as? WorkTask {
                print("\(index + 1): \(task.title): Deadline - \(workTask.deadline) = \(task.isCompleted)")
            }
            if let personalTask = task as? PersonalTask {
                print("\(index + 1): \(task.title): Location - \(personalTask.location) = \(task.isCompleted)")
            }
        }
        print("----------------")
    }
}
