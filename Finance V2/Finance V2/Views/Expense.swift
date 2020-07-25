//
//  Expense.swift
//  Finance
//
//  Created by Lykøs on 5/29/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct Expense: View {
    @EnvironmentObject var userFinance: UserFinance
    var body: some View {
        ZStack{
            Color.appColor
            VStack{
                VStack{
                    Text("Monthly expenses")
                    TextField("", text: $userFinance.monthlyExpenses)
                        .frame(width: 150, height: nil, alignment: .center)
                        .keyboardType(.numberPad)
                        .textFieldStyle(neomorphField(icon: "calendar"))
                }
                NavigationLink(destination: ResutlsView()){
                    Text("Results")
                }
                .buttonStyle(simpleButtonStyle(bttnWidth: 125, bttnHeight: 60))
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
    }
}

struct Expense_Previews: PreviewProvider {
    static var previews: some View {
        Expense().environmentObject(UserFinance())
    }
}
