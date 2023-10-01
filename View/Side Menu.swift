//
//  Side Menu.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-30.
//

import SwiftUI
import SwiftUICharts

struct Side_Menu: View {
    @State private var isMenuOpen = false

       var body: some View {
           NavigationView {
               ZStack {
                   // Main content view
                   Color.white
                       .edgesIgnoringSafeArea(.all)

                   // Side menu
                   SideMenuView(isOpen: $isMenuOpen)
                       .frame(maxWidth: .infinity, alignment: .leading)

                   // Content
                   VStack {
                       Spacer()
                       Button(action: {
                           withAnimation {
                               isMenuOpen.toggle()
                           }
                       }) {
                           // Your button content
                       }
                       .padding(.top, 680)
                       .padding(.vertical)
                   }
               }
               .navigationBarItems(leading:
                   Button(action: {
                       withAnimation {
                           isMenuOpen.toggle()
                       }
                   }) {
                       Image(systemName: "line.horizontal.3")
                           .imageScale(.large)
                   }
               )
           }
       }
   }

   // Move SideMenuView outside of Side_Menu


struct Side_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Side_Menu()
        
    }
    
    struct SideMenuView: View {
        @Binding var isOpen: Bool

        var body: some View {
            ZStack{
                      Image("2")
                          .resizable()
                          .offset(y:-100)       
                    
                      BarChartView(data: ChartData(values: [("A", 30), ("B", 50), ("C", 20)]), title: "Bar Chart", legend: "Legend")
                          .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                          .padding()
                          .offset(y:-200)
          
                      
                      
                 }
            VStack(spacing: 20) {
                Spacer()
                NavigationLink(destination: UserProfile()) {
                    Text("User Profile")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(alignment: .leading)
                }

                NavigationLink(destination: Setting()) {
                    Text("Setting")
                        .font(.headline)
                        .foregroundColor(.black)
                }

                NavigationLink(destination: Setting()) {
                    Text("Report")
                        .font(.headline)
                        .foregroundColor(.black)
                }
            }
            .padding(.bottom, 450)
            .padding(.horizontal)
            .padding(.vertical)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(width: isOpen ? 200 : 0)
            .background(Color.blue.opacity(0.1))
            .offset(x: isOpen ? 0 : -250)
            .onTapGesture {
                withAnimation {
                    isOpen.toggle()
                }
            }
        }
    }
}
