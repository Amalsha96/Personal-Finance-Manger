//
//  button.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-29.
//

import SwiftUI

struct button: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Become your own money manager and make every cent count")
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: login_View()) {
                    Text("Login")
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

struct button_Previews: PreviewProvider {
    static var previews: some View {
        button()
    }
}
