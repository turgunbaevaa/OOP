//
//  Task.swift
//  TaskManager
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

protocol Task {
    var title: String { get }
    var isCompleted: Bool { get set }
    
    func completeTask()
    
}
