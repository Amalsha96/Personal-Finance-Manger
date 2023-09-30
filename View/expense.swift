//
//  expense.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-26.
//

import SwiftUI

struct expense: View {
    @State private var receivedBadgeCount = 2
      @State private var accountBadgeVisible = true

    var body: some View {
        TabView {
                   expense()
                       .tabItem {
                           Label("Received", systemImage: "tray.and.arrow.down.fill")
                       }
                       

                       }
                   
               }
       
    }


struct expense_Previews: PreviewProvider {
    static var previews: some View {
        expense()
    }
}


struct Badge: View {
    let count: Int?
    let text: String?

    init(count: Int) {
        self.count = count
        self.text = nil
    }

    init(text: String) {
        self.count = nil
        self.text = text
    }

    var body: some View {
        ZStack {
            if let count = count {
                Circle()
                    .fill(Color.red)
                    .frame(width: 20, height: 20)
                Text("\(count)")
                    .foregroundColor(.white)
                    .font(.system(size: 12))
            } else if let text = text {
                Circle()
                    .fill(Color.red)
                    .frame(width: 20, height: 20)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 12))
            }
        }
    }
}
