//
//  login View.swift
//  Personal Finance Manger
//
//  Created by Amalsha Pramod on 2023-09-11.
//

import SwiftUI



struct login_View: View {
    
    @State private var username = ""
        @State private var password = ""
        @State private var showAlert = false
        @State private var showPasswordReset = false
    // Array of image names
    let imageNames = ["login2", "create account1"]
    
    // State variable to track the currently displayed image
    @State private var currentImageIndex = 0
    
        
        // Example login validation function
            func isValidLogin() -> Bool {
                // Add your own logic to validate the login here
                return username == "your_username" && password == "your_password"
            }
     
        var body: some View {
            
            
            NavigationView
            {
                
                                
                        
                VStack(spacing:5)
                {
                                        
                    VStack {
                                            Image(imageNames[currentImageIndex])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height:300)
                      //  .padding(.top,20)
                    
                    Button("o o o") {
                        // Increment the currentImageIndex, wrapping around to 0 when reaching the end
                        currentImageIndex = (currentImageIndex + 1) % imageNames.count
                    
                        
                
                    }
                    
                                     //    .frame(width: 140, height: 140)
                                //         .padding()
                            
                    
                                 //  Text("Sign In")
                                   //    .font(.largeTitle)
                                     //  .bold()//    .italic()
                                  //    .padding(.vertical)
                                  //     .frame(maxWidth:.infinity,alignment: .leading)
                      
                           
                    TextField("Username", text: $username)
                                     .textFieldStyle(RoundedBorderTextFieldStyle())
                                     .padding(.horizontal)
                                     .padding(.bottom, 5)
                    
                                 SecureField("Password", text: $password)
                                     .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.horizontal)
                                    .padding(.bottom, 5)
                                
                    Button(action: {
                                    // Add your login logic here
                                    if isValidLogin() {
                                        // Navigate to the next screen or perform the desired action
                                    } else {
                                        showAlert = true
                                    }
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
                   
                  NavigationLink(
                    destination: createAccount_View(),
                    label: {
                       
                    
                                       Text("Create Account")
                                           .font(.headline)
                                           .foregroundColor(.black) // You can customize the color
                                        .padding()
                                           .frame(maxWidth: .infinity)
                                   
                    } )
                            
                        
                    
                    NavigationLink(
                        destination:forgotPassword_View(),
                        label:{
                                         Text("Forgot Password?")
                                             .foregroundColor(.black)
                            .underline()
                            
                                            .padding(.bottom,50)
                    })
                         
                                 
                                 Spacer()
                        
                }
                  
                }
               //.offset(y:-500)
        
            
    }

        }
        

struct login_View_Previews: PreviewProvider {
    static var previews: some View {
        login_View()
    }
}
}
