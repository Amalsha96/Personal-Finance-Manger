//
//  button new.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-29.
//

import SwiftUI

struct button_new: View {
    var body: some View {
        ZStack{
         Image("2")
            
          VStack{
            
            NavigationView{
            
                NavigationLink(destination: Sign_UP()) {
                    Text("Sign UP")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10
                    
                        )  }
            }
                
            }
            
        }
    }
}

struct button_new_Previews: PreviewProvider {
    static var previews: some View {
        button_new()
    }
}
