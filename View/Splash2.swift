//
//  Splash2.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-27.
//

import SwiftUI

struct Splash2: View {
    var body: some View {
        ZStack{
            Text("my app")
                .font(.largeTitle)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            Image("1")
                .resizable()
            aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Splash2_Previews: PreviewProvider {
    static var previews: some View {
        Splash2()
    }
}
