//
//  nave.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-27.
//

import SwiftUI

struct nave: View {
    // Array of image names
    let imageNames = ["login", "login2", "create account1"]
    
    // State variable to track the currently displayed image
    @State private var currentImageIndex = 0
    
    var body: some View {
        VStack {
            Image(imageNames[currentImageIndex])
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 300)
                .padding(.top,20)
            
            Button("o o o") {
                // Increment the currentImageIndex, wrapping around to 0 when reaching the end
                currentImageIndex = (currentImageIndex + 1) % imageNames.count
        
            }
            .padding()
        }
    }
    
struct nave_Previews: PreviewProvider {
    static var previews: some View {
        nave()
    }
}
}
