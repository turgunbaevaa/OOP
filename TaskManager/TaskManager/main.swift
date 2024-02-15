//
//  main.swift
//  TaskManager
//
//  Created by Aruuke Turgunbaeva on 4/12/23.
//

import Foundation

//-Создайте протокол Task, который будет определять обязательные свойства и методы для задачи. Например, у каждой задачи должны быть свойства title и isCompleted, а также метод completeTask().
//-Разработайте два класса, WorkTask и PersonalTask, оба должны соответствовать протоколу Task. Добавьте в каждый класс специфические свойства или методы, например, deadline для WorkTask.
//-Создайте класс TaskManager, который будет управлять массивом объектов, соответствующих протоколу Task. Включите методы для добавления, удаления и отображения всех задач.
//-Создайте несколько экземпляров WorkTask и PersonalTask, добавьте их в TaskManager и продемонстрируйте работу методов TaskManager.

import Foundation

let workTask1 = WorkTask(title: "Complete all homeworks", deadline: "04.12.2023")
let workTask2 = WorkTask(title: "Check scholarship docs", deadline: "8.12.2023")
let workTask3 = WorkTask(title: "AI exam date", deadline: "19.12.2024")

let personalTask1 = PersonalTask(title: "Trip with friends", location: "Scilla")
let personalTask2 = PersonalTask(title: "Winter holidays", location: "UAE")
let personalTask3 = PersonalTask(title: "Summer holidays", location: "Zhalal-Abad")

var taskManager = TaskManager()
taskManager.addTask(task: workTask1)
taskManager.addTask(task: workTask2)
taskManager.addTask(task: workTask3)
taskManager.addTask(task: personalTask1)
taskManager.addTask(task: personalTask2)
taskManager.addTask(task: personalTask3)

taskManager.showTasks()

taskManager.removeTask(at: 0)
workTask1.completeTask()
workTask2.completeTask()
workTask3.completeTask()
personalTask1.completeTask()
personalTask2.completeTask()
personalTask3.completeTask()
taskManager.showTasks()
