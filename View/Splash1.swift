//
//  Splash1.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-27.
//

import SwiftUI
struct Splash1: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        ZStack{
            //RadialGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), center: .center, startRadius: 0, endRadius: 300)
                          //  .edgesIgnoringSafeArea(.all)
        
        if isActive {
           // login_View()
            Signing()
        } else {
            VStack {
                
                VStack {
                    Image("1")
                        .resizable()
                       // .frame(width: 500, height: 400
                         //      , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        //font(.system(size: 80))
                        //.foregroundColor(.black)
                        //.padding()
                        //Text("Tracking your Expenses")
                        //.font(Font.custom("Baskerville-Bold", size: 30))
                        //.foregroundColor(.black.opacity(0.80))
                        //.imageScale(.medium)
                       // .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment: .leading)
                        //.padding(.top,10)
                        //.padding(.bottom,20)
                        .frame(width: 400, height: 800, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                
                }
                //.scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 3)) {
                        self.size = 20
                        self.opacity = 40.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
}


struct Splash1_Previews: PreviewProvider {
    static var previews: some View {
        Splash1()
    }
}
