//
//  LineChart.swift
//  Personal Finance Manger
//
//  Created by malindu pabasara on 2023-09-13.
//

import SwiftUI

struct LineChart: View {
    let data: [Double]
      let maxValue: Double
      let lineWidth: CGFloat
      let lineColor: Color

      var body: some View {
          GeometryReader { geometry in
              Path { path in
                  let stepX = geometry.size.width / CGFloat(data.count - 1)
                  let stepY = geometry.size.height / CGFloat(maxValue)

                  for i in 0..<data.count {
                      let x = stepX * CGFloat(i)
                      let y = geometry.size.height - CGFloat(data[i]) * stepY
                      if i == 0 {
                          path.move(to: CGPoint(x: x, y: y))
                      } else {
                          path.addLine(to: CGPoint(x: x, y: y))
                      }
                  }
              }
              .stroke(lineColor, lineWidth: lineWidth)
          }
      }
  }

  struct FinancialDashboardView: View{
      let sampleData: [Double] = [1000, 1200, 1400, 1100, 1300, 900, 1100]
      let maxValue: Double = 1500 // Adjust this value based on your data.

      var body: some View {
          VStack {
              Text("Financial Dashboard")
                  .font(.largeTitle)

              // Balance Summary (as in the previous examples)

              // Line Chart
              LineChart(data: sampleData, maxValue: maxValue, lineWidth: 2, lineColor: .blue)
                  .frame(height: 200)
                  .padding()
          }
      }
  }


struct FinancialDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        FinancialDashboardView()
    }
}
