//
//  Fogot Password.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-29.
//

import SwiftUI

struct Fogot_Password: View {
    //@State private var username = ""
      //  @State private var password = ""
    @State private var Email = ""
       
       // @State private var showPasswordReset = false
   
    // State variable to track the currently displayed image
    @State private var currentImageIndex = 0
    
        
        // Example login validation function
          //  func isValidLogin() -> Bool {
                // Add your own logic to validate the login here
              //  return username == "your_username" && password == "your_password"
           // }
     
        var body: some View {
            ZStack{
                
            
            NavigationView
            {
                VStack(spacing:10)
                {
                    
                    Image("2")
                     .resizable()
                     .aspectRatio(contentMode:.fill)
                     .padding(.top,200)
                    
                    
                    VStack(spacing: 20)
                     {
                          
                        
                       Text("Don’t worry.Enter your email and we’ll send you a link to reset your password.")
                        .padding()
                        .offset(y:-00)
                        .font(.system(size: 20))
                    
                                 SecureField("Email", text: $Email)
                                     .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.horizontal)
                                    .offset(y:-10)
                                   // .padding(.bottom, 5)
                      
                        NavigationLink(destination:  New_Login()) {
                            Text("Continue")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(10
                                        
                                                
                              )
                        }
                    
                                            
                }
                    . offset(y:-500)
                }
                . offset(y:-20)
            
}
              
 }
           

}
}

struct Fogot_Password_Previews: PreviewProvider {
    static var previews: some View {
        Fogot_Password()
    }
}
