//
//  MonthlyView.swift
//  Finance
//
//  Created by Lykøs on 5/21/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct MonthlyView: View {
    @State private var expense: String = ""
    @EnvironmentObject var userFinance: UserFinance
    
    var body: some View {
        ZStack{
            Color.appColor
            VStack{
                
                VStack{
                    Text("Monthly Job Income")
                    TextField("", text: $userFinance.monthlyIncome)
                        .keyboardType(.numberPad)
                        .textFieldStyle(neomorphField(icon: "calendar"))
                }
                VStack{
                    Text("Monthly Side Income")
                    TextField("", text: $userFinance.monthlySideIncome)
                        .keyboardType(.numberPad)
                        .textFieldStyle(neomorphField(icon: "calendar"))
                }
                VStack{
                    Text("Monthly Passive Income")
                    TextField("", text: $userFinance.passiveIncome)
                        .keyboardType(.numberPad)
                        .textFieldStyle(neomorphField(icon: "calendar"))
                }
                
                NavigationLink(destination: Option()){
                    Text("Next Step")
                }.buttonStyle(neomorphButton())
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct MonthlyView_Previews: PreviewProvider {
    static var previews: some View {
        MonthlyView().environmentObject(UserFinance())
    }
}
