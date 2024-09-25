//
//  User.swift
//  ToDoList
//
//  Created by Alejandro  on 03/09/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
