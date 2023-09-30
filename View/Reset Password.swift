//
//  Reset Password.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-29.
//

import SwiftUI

struct Reset_Password: View {
   
  @State private var Email = ""
     
     
  @State private var currentImageIndex = 0
  
      
      
   
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
                         
                  
                  
                               SecureField("New password", text: $Email)
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                  .padding(.horizontal)
                                  .offset(y:-10)
                    
                    
                                 SecureField("Retype New password", text: $Email)
                                     .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.horizontal)
                                    .offset(y:-20)
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
              . offset(y:-50)
          
}
            
}

}
}

struct Reset_Password_Previews: PreviewProvider {
    static var previews: some View {
        Reset_Password()
    }
}
