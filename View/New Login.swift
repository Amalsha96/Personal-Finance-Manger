//
//  New Login.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-29.
//

import SwiftUI

struct New_Login: View {
   
    @ObservedObject var loginViewMOdel = LoginViewModel()
    @State private var username = ""
        @State private var password = ""
        @State private var showAlert = false
        @State private var showPasswordReset = false
    
        // Example login validation function
            func isValidLogin() -> Bool {
                // Add your own logic to validate the login here
                return username == "your_username" && password == "your_password"
            }
     
                
    var body: some View {
        NavigationView{
            
            
            ZStack{
                Image("2")
                    .resizable()
                    .aspectRatio(contentMode:.fill)
                   // .padding(.bottom,00)
                
               
                  
               .padding(.top,-130)
                VStack{
                
               
                    TextField("Username", text: $loginViewMOdel.user_model.email)
                                 .textFieldStyle(RoundedBorderTextFieldStyle())
                                 .padding(.horizontal)
                                 .padding(.bottom, 5)
                   // .padding().border(Color.purple, width: 10)
                    // .padding(.vertical)
                    
                    
                   .offset(y:-40)
                
                
                    SecureField("Password", text: $loginViewMOdel.user_model.password)
                                 .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal)
                                .padding(.bottom, 5)
                                .offset(y:-30)
                            
                Button(action: {
                    loginViewMOdel.login(email: loginViewMOdel.user_model.email, password: loginViewMOdel.user_model.password)
                                
                            }) {
                                Text("Login")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .cornerRadius(10
                                                  
                                    )
                            }
                            .alert(isPresented: $showAlert) {
                                Alert(title: Text("Invalid Login"), message: Text("Please check your username and password and try again."), dismissButton: .default(Text("OK")))
                                
                            }
                                    
              
                .offset(y:-20)
               
                NavigationLink(
                    destination: Fogot_Password(),
                    label:{
                                     Text("Forgot Passowrd ?")
                                         .foregroundColor(.black)
                        //.underline()
                                        .offset(y:-10)
                                        .font(.system(size: 20))
                        
                                       // .padding(.bottom,50)
                })
                
                
                 NavigationLink(
                     destination: Sign_UP(),
                     label:{
                                      Text("Don't have an account ? Sing Up")
                                          .foregroundColor(.black)
                         .underline()
                                         .offset(y:15)
                         
                                        // .padding(.bottom,50)
                 })
                 
                }
                .padding(.top,-60)
                
                            
                
            }
            
            
        }
}
}



struct New_Login_Previews: PreviewProvider {
    static var previews: some View {
        New_Login()
    }
}

