//
//  New LoginViewMode.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-30.
//

import Foundation
import Firebase

class New loginViewMode : ObservableObject
{

    @Published var user_model = (email: "", password: "", confirmPassword: "")

    
    @Published var notValidLogin: Bool = false
    @Published var isLoggedIn: Bool = false
    
    private func clearFields()
    {
        user_model.email = ""
        user_model.password = ""
        user_model.confirmPassword = ""
    }
    
    
    func login(email : String , password : String)
    {
  
        user_model.email = email
        user_model.password = password
        
        
        Auth.auth().signIn(withEmail: user_model.email, password: user_model.password) {
            result , error in
            
            
            if error != nil
            {
                print(error!.localizedDescription)
                self.notValidLogin = true
                
                
              
            }
            else
            {
             
                self.isLoggedIn = true
                self.notValidLogin = false
                
                self.clearFields()
                
            }
        }
 
    }
    
    
}

