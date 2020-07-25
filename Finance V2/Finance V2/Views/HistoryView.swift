//
//  HistoryView.swift
//  Finance V2
//
//  Created by Lykøs on 6/12/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI
import SwiftUICharts
import Neumorphic

struct HistoryView: View {
    @State private var chartStyle : ChartStyle = ChartStyle(backgroundColor: Color.offWhite, accentColor: Colors.GradientNeonBlue, secondGradientColor: Colors.GradientPurple, textColor: Color.black, legendTextColor: Color.black, dropShadowColor: Color.black.opacity(0))
    @State var testData: [[Double]] = [
        UserFinance().calcMoney(age: 20, futureAge: 25, moneySaved: 2000, moneyPossesion: 200, monthlyIncome: 572, passive: 0, side: 0, monthlyExpenses: 250),
        UserFinance().calcMoney(age: 23, futureAge: 33, moneySaved: 5000, moneyPossesion: 100, monthlyIncome: 1000, passive: 100, side: 25, monthlyExpenses: 300),
        UserFinance().calcMoney(age: 40, futureAge: 48, moneySaved: 8000, moneyPossesion: 600, monthlyIncome: 10000, passive: 400, side: 0, monthlyExpenses: 4000)
    ]
    
    var body: some View {
        ZStack{
            Color.clear
//            VStack{
//                VStack{
            ScrollView(showsIndicators: false){
                VStack{
                    ForEach(testData, id: \.self){ data in
                        BarChartView(data: ChartData(points: data), title: "Money", legend: "age", style: self.chartStyle, form: ChartForm.large, valueSpecifier: "%.2f")
                            .softOuterShadow(darkShadow: Color.white.opacity(0.2), lightShadow: Color.black.opacity(0.07))
                            .frame(width: 300, height: 100, alignment: .center)
                            .padding(.horizontal)
                    }.padding()
                }
            }.padding(.top, 300)

//                }
//            }.padding(.top, 310)

        }.edgesIgnoringSafeArea(.all)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
