
//
//  createAccount_ViewModel.swift
//  expenceTrackerApp
//
//  Created by malindu pabasara on 2023-09-12.
//

import Foundation
import Firebase

class CreateAccount_ViewModel: ObservableObject {
    
    @Published var user_model = user_Model(email: "", password: "", confirmPassword: "")
    @Published var notValidMail: Bool = false
    @Published var notValidPass: Bool = false
    @Published var notMatchedConfirmPass: Bool = false
    @Published var successAcCreate: Bool = false
    
    func dismissAlert() {
        notValidMail = false
        notValidPass = false
        notMatchedConfirmPass = false
        successAcCreate = false
    }
    
    private func validateEmail(email: String) {
        // Email validation logic
        let emailRegexPattern = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
               
               let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegexPattern)
               notValidMail = !emailPredicate.evaluate(with: email)
    }
    
    private func validatePassword(password: String) {
        let passwordRegex = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}"
                let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
                notValidPass = !passwordPredicate.evaluate(with: password)
    }
    
    private func validateConfirmPassword(password: String, confirmPassword: String) {
        // Confirm password validation logic
        notMatchedConfirmPass = !(password == confirmPassword)
    }
    
    private func clearFields() {
        user_model.email = ""
        user_model.password = ""
        user_model.confirmPassword = ""
    }
    
    func createAccount(email: String, password: String, confirmPassword: String) {
        
        validateEmail(email: user_model.email)
        validatePassword(password: user_model.password)
        validateConfirmPassword(password: user_model.password, confirmPassword: user_model.confirmPassword)
        
        guard !notValidMail, !notValidPass, !notMatchedConfirmPass else {
            // Handle validation errors (e.g., display an alert)
            return
        }
        //user_model.password
        Auth.auth().createUser(withEmail:"Amalshapramod@gmail.com", password: "123456") { result, error in
            if let error = error {
                print("Error creating user: \(error.localizedDescription)")
                // Handle error (e.g., display an alert)
            } else {
                self.successAcCreate = true
                self.clearFields()
            }
        }
    }
}
