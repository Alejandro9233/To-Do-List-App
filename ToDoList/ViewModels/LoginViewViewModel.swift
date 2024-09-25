//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Alejandro  on 03/09/24.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        // try
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        // Trim whitespace and check if fields are empty
        let trimmedEmail = email.trimmingCharacters(in: .whitespaces)
        let trimmedPassword = password.trimmingCharacters(in: .whitespaces)

        guard !trimmedEmail.isEmpty, !trimmedPassword.isEmpty else {
            errorMessage = "Please fill in all fields."
            return false
        }
        
        guard isValidEmail(trimmedEmail) else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        return true
    }

    private func isValidEmail(_ email: String) -> Bool {
        return email.contains("@") && email.contains(".")
    }

}
