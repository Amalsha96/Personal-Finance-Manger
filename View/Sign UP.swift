//
//  Sign UP.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-29.
//

import SwiftUI

struct Sign_UP: View {
    
    
    @ObservedObject var creatAccountViewModel = CreateAccount_ViewModel()
    
    @State private var username = ""
        @State private var password = ""
    @State private var Email = ""
        @State private var showAlert = false
        @State private var showPasswordReset = false
   
    // State variable to track the currently displayed image
    @State private var currentImageIndex = 0
    
        
        // Example login validation function
            func isValidLogin() -> Bool {
                // Add your own logic to validate the login here
                return username == "your_username" && password == "your_password"
            }
     
        var body: some View {
            ZStack{
                
            
            NavigationView
            {
                VStack(spacing:10)
                {
                    Image("2")
                     .resizable()
                     .aspectRatio(contentMode:.fill)
                     .padding(.top,250)
                    
                    
                    VStack(spacing: 20)
                     {
                           
                        TextField("email", text: $creatAccountViewModel.user_model.email)
                                     .textFieldStyle(RoundedBorderTextFieldStyle())
                                     .padding(.horizontal)
                                     .padding(.bottom, 5)
                            .offset(y:-80)
                    
                        SecureField("Passowrd", text: $creatAccountViewModel.user_model.password)
                                     .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.horizontal)
                                    .offset(y:-70)
                                   // .padding(.bottom, 5)
                        
                        
                        TextField("Confirme Password", text: $creatAccountViewModel.user_model.confirmPassword)
                                         .textFieldStyle(RoundedBorderTextFieldStyle())
                                         .padding(.horizontal)
                                         //.padding(.bottom, 5)
                            .offset(y:-60)
                        Spacer()
                        
                                
                    Button(action: {
                        creatAccountViewModel.createAccount(email: creatAccountViewModel.user_model.email, password: creatAccountViewModel.user_model.password, confirmPassword: creatAccountViewModel.user_model.confirmPassword)
                                })
                    {
                                    Text("Sign Up")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.blue)
                                        .cornerRadius(10
                                                        
                                        )
                                        .offset(y:-40)
                                }
                                .alert(isPresented: $showAlert) {
                                    Alert(title: Text("Invalid Login"), message: Text("Please check your username and password and try again."), dismissButton: .default(Text("OK")))
                                }
                    
                    NavigationLink(
                        destination:forgotPassword_View(),
                        label:{
                                         Text("alreday have an account ? login")
                                             .foregroundColor(.black)
                            .underline()
                            
                                            .padding(.bottom,50)
                    })
                        .offset(y:-40)                                                       
                }
                    . offset(y:-400)
                }
        
            
    }
              
            }

        }
}
struct Sign_UP_Previews: PreviewProvider {
    static var previews: some View {
        Sign_UP()
    }
}
