//
//  SideMenu_PreViews.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-22.
//

import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    let text: String
    let handler: () -> Void
}

struct MenuContent: View {
    let items: MenuItem  // No square brackets

    var body: some View {
        ZStack {
            Color(UIColor(red: 33/255.0, green: 3/255.0, blue: 3/255.0, alpha: 1))
            
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text(items.text)  // No square brackets
                        .foregroundColor(Color.white)
                        .bold()
                        .font(.system(size: 22))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .onTapGesture {
                    items.handler() // Perform the action associated with the item
                }
                .padding()
                Divider()
                Spacer()
            }
            .padding(.top, 25)
        }
    }
}

struct SideMenu: View {
    let width: CGFloat
    let menuOpened: Bool
    let toggleMenu: () -> Void
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.25))
            .opacity(self.menuOpened ? 1 : 0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.toggleMenu()
            }
            
            HStack {
                MenuContent(items:
                    MenuItem(text: "Home") {
                        print("Tapped Home")
                    }
                )
                .frame(width: width)
                .offset(x: menuOpened ? 0 : -width)
                .animation(.default)
                
                Spacer()
            }
        }
    }
}

struct SideMenuView: View {
    @State var menuOpened = false
    
    var body: some View {
        ZStack {
            if !menuOpened {
                Button(action: {
                    // Open the menu
                    self.toggleMenu()
                }, label: {
                    Text("Open Menu")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color(.systemBlue))
                })
            }
            
            SideMenu(width: UIScreen.main.bounds.width / 1.8, menuOpened: menuOpened, toggleMenu: toggleMenu)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    func toggleMenu() {
        menuOpened.toggle()
    }
}

struct SideMenu_PreViews_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
