//
//  user_Model.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-30.
//

import Foundation
struct user_Model
{
    var id = UUID()
    var email : String
    var password : String
    var confirmPassword : String
    
    init(email: String,password: String,confirmPassword: String)
   {
    
        self.email = email
        self.password = password
       self.confirmPassword = confirmPassword
   }
    
  
    
}
