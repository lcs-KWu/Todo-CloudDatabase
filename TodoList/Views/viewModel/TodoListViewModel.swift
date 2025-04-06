//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by Yixuan Wu on 2025-04-04.
//

import Foundation

@Observable
class TodoListViewModel {
    
    // MARK: Stored properties
    // The list of to-do items
    var todos: [TodoItem]
    
    // MARK: Initializer(s)
    init(todos: [TodoItem] = []) {
        self.todos = todos
        Task {
            try await getTodos()
        }
    }
    
    // MARK: Functions
    func getTodos() async throws {
        
        do {
            let results: [TodoItem] = try await supabase
                .from("todos")
                .select()
                .execute()
                .value
            
            self.todos = results
            
        } catch {
            debugPrint(error)
        }
        
    }
    
    func delete(_ todo: TodoItem) {
        
        // Remove the provided to-do item from the array
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
        
    }
}
