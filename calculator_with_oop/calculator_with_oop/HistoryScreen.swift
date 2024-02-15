//
//  HistoryScreen.swift
//  calculator_with_oop
//
//  Created by Aruuke Turgunbaeva on 25/11/23.
//

import Foundation

class OperationDetail{
    let description: String
        
    init(description: String) {
        self.description = description
    }
}

class HistoryScreen{
    var history: [OperationDetail] = []
    
    func addHistory(_ operationDescription: String){
        let operationDetail = OperationDetail(description: operationDescription)
        history.append(operationDetail)
        
    }
    
    func removeAtIndex(at index: Int){
        guard index >= 0 && index < history.count else{
            print("Неверный индекс")
            return
        }
        history.remove(at: index)
    }
    
    func getHistory() -> [OperationDetail] {
            return history
        }
}
