//
//  financialDashbordView.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-13.
//

import SwiftUI
import SwiftUICharts

struct financialDashbordView: View {
    // Sample data for balance summary
        let totalIncome: Double = 5000.0
        let totalExpenses: Double = 3500.0
        let currentBalance: Double = 1500.0
    

            var body: some View {
                VStack {
                    Text("Financial Dashboard")
                        .font(.largeTitle)
                    
                    // Balance Summary
                    HStack {
                        VStack {
                            Text("Total Income")
                            Text("$\(totalIncome)")
                                .font(.title)
                        }
                        Spacer()
                        VStack {
                            Text("Total Expenses")
                            Text("$\(totalExpenses)")
                                .font(.title)
                        }
                        Spacer()
                        VStack {
                            Text("Current Balance")
                            Text("$\(currentBalance)")
                                .font(.title)
                        }
                    }
                    .padding()
                }
            }
        }
    


struct financialDashbordView_Previews: PreviewProvider {
    static var previews: some View {
        financialDashbordView()
    }
}
