//
//  ResutlsView.swift
//  Finance
//
//  Created by Lykøs on 5/22/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI
import SwiftUICharts
import Neumorphic

struct ResutlsView: View {
    @EnvironmentObject var userFinance: UserFinance
    @State private var ageAt: String = ""
    @State private var chartStyle : ChartStyle = ChartStyle(backgroundColor: Color.offWhite, accentColor: Colors.GradientNeonBlue, secondGradientColor: Colors.GradientPurple, textColor: Color.black, legendTextColor: Color.black, dropShadowColor: Color.black.opacity(0))
    
    var body: some View {
        ZStack{
            Color.appColor
            VStack{
                HStack{
                    VStack{
                        Text("Age")
                        TextField("",text: $ageAt)
                            .keyboardType(.numberPad)
                            .textFieldStyle(neomorphField(icon: "calendar", inputWidth: 150))
                    }.padding()
                    Text("=")
                        .padding()
                    if(userFinance.calcMoney(checkAt: Int(ageAt) ?? 0) == 0){
                        Text("Enter Age Above \(userFinance.age)")
                    }else{
                        Text("\(userFinance.calcMoney(checkAt: Int(ageAt) ?? 0), specifier: "%.2f")")
                    }
                }
                
                if(userFinance.calcMoney(checkAt: Int(ageAt) ?? 0) == 0){
                    VStack{
                        BarChartView(data: ChartData(points: userFinance.calcMoney()), title: "Money", legend: "age", style: chartStyle, form: ChartForm.large, valueSpecifier: "%.2f")
                            .softOuterShadow(darkShadow: Color.white.opacity(0.2), lightShadow: Color.black.opacity(0.07))
                            .frame(width: 300, height: 100, alignment: .center)
                    }
                    .padding()
                }else{
                    VStack{
                        BarChartView(data: ChartData(points: userFinance.calcMoney(checkAt: Int(ageAt) ?? 0)), title: "Money", legend: "age",style: chartStyle, form: ChartForm.large, valueSpecifier: "%.2f")
                            .softOuterShadow(darkShadow: Color.white.opacity(0.2), lightShadow: Color.black.opacity(0.07))
                            .frame(width: 300, height: 100, alignment: .center)
                    }
                    .padding()
                }
            }
            .frame(width: 300, height: 100, alignment: .center)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ResutlsView_Previews: PreviewProvider {
    static var previews: some View {
        ResutlsView().environmentObject(UserFinance())
    }
}
