//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Alejandro  on 19/08/24.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
