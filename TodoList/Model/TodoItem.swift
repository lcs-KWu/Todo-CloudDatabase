//
//  TodoItem.swift
//  TodoList
//
//  Created by Russell Gordon on 2024-04-08.
//

import Foundation

struct TodoItem: Identifiable, Codable {
    var id: Int?
    var title: String
    var done:  Bool
}

let firstItem = TodoItem(title: "Study for Chemisty quiz", done: false)

let secondItem = TodoItem(title: "Finish Computer Science assignment", done: true)

let thirdItem = TodoItem(title: "Go for a run around campus", done: false)

let exampleItems = [
    
    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
    
]
