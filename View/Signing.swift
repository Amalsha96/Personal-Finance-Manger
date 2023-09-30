//
//  Signing.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-28.
//

import SwiftUI
struct Signing: View {
    
    
       // Array of image names
       let imageNames = ["3","create login", "create account1"]
       
       // State variable to track the currently displayed image
       @State private var currentImageIndex = 0
       
       var body: some View {
       
            
        NavigationView
        {
            
               
            VStack(spacing: 5){
                    
                
                   Image(imageNames[currentImageIndex])
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 300, height:300)
                  .cornerRadius(50)
                   //.padding(.bottom,200)
                

                  Button("o o o") {
                // Increment the currentImageIndex, wrapping around to 0 when reaching the end
                  currentImageIndex = (currentImageIndex + 1) % imageNames.count
                     }
                Spacer()
                
                        
              // Text("Gain total control of your money")
                  // .font(.system(size: 40))
                  // .multilineTextAlignment(.center)
                               
                  //.padding()
                  // Text("Become your own money manager and make every cent count")
                     //  .multilineTextAlignment(.center)
                       //.padding()
                
               Spacer()
                                               
                                // Button to navigate to a new page
                                NavigationLink(destination: Sign_UP()) {
                                    Text("Sign UP")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.blue)
                                        .cornerRadius(10
                                    
                                      )
                                        
                                    
                                }
                                
                NavigationLink(destination:  New_Login()) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10
                    
                      )
                }
                  .padding(.bottom,190)
                
                    
                     
        
       }
          
       }

       }


    
}
                 

struct Signing_Previews: PreviewProvider {
    static var previews: some View {
        Signing()
    }
}


