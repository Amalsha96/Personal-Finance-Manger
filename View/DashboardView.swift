//
//  DashboardView.swift
//  Personal Finance Manger
//
//  Created by Amalsha Pramod on 2023-09-15.
//

import SwiftUI
import SwiftUICharts

struct DashboardView: View {
    @State private var isMenuOpen = false
    var body: some View {
        VStack {
                    // Add as many charts as you need
                    LineChartView(data: [8, 23, 54, 32, 12, 37, 7], title: "Line Chart", legend: "Legend")
                        .frame(height: 200)
                        .padding()
                    
                    BarChartView(data: ChartData(values: [("A", 30), ("B", 50), ("C", 20)]), title: "Bar Chart", legend: "Legend")
                        .frame(height: 200)
                        .padding()
                    
            NavigationView {
                       ZStack {
                        
                        
                        
                           // Main content view
                           Color.white
                               .edgesIgnoringSafeArea(.all)
                           
                           // Side menu
                           SideMenuView(isOpen: $isMenuOpen)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment: .leading)
                           // Content
                           VStack {
                               
                               Spacer()
                               
                               Button(action: {
                                   withAnimation {
                                       isMenuOpen.toggle()
                                   }
                               }) {
                                   
                               }
                               .padding(.top, 680)
                               .padding(.vertical)
                           }
                       }
                       .navigationBarItems(leading: (
                           Button(action: {
                               withAnimation {
                                   isMenuOpen.toggle()
                               }
                           }) {
                               Image(systemName: "line.horizontal.3")
                                   .imageScale(.large)
                           }
                       ))
                   }
            
            VStack {
                        // Add as many charts as you need
                        LineChartView(data: [8, 23, 54, 32, 12, 37, 7], title: "Line Chart", legend: "Legend")
                            .frame(height: 200)
                            .padding()
                        
                        BarChartView(data: ChartData(values: [("A", 30), ("B", 50), ("C", 20)]), title: "Bar Chart", legend: "Legend")
                            .frame(height: 200)
                            .padding()
                        
                       
        }
               }
           }


    struct SideMenuView: View {
        @Binding var isOpen: Bool

        var body: some View {
            // Add your side menu items here
            
                VStack(spacing: 20) {
                
                Spacer()
                  
                    
                Text("Home")
                Text("Profile")
                Text("Settings")
                }
             
            
                
            .padding(.bottom,500)
                
                .padding(.horizontal)
                .padding(.vertical)
                
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment: .leading)
            .frame(width: isOpen ? 200 : 0)
            .background(Color.gray.opacity(0.5))
            .offset(x: isOpen ? 0 : -250)
            .onTapGesture {
                withAnimation {
                    isOpen.toggle()
                        
                }
                
            }
    }
    }
         
      
            
            
            
            
            
        
    

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
    }
