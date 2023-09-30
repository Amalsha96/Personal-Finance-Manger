//
//  MenuBar.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-30.
//

import SwiftUI

struct MenuBar: View {
    var body: some View {
        ZStack(alignment: .center, content: {
            Color("TabBG")
                .ignoresSafeArea()
        })
    }
}

struct MenuBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuBar()
    }
}

