//
//  Advanced.swift
//  Finance V2
//
//  Created by Lykøs on 6/23/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct Advanced: View {
    @EnvironmentObject var userFinance: UserFinance
    
    var body: some View {
        ZStack{
            Color.appColor
            ScrollView(showsIndicators: false){
                Group{
                    ExpensesField(data: userFinance.rent, info: "Monthly Rent")
                    ExpensesField(data: userFinance.mortgage, info: "Monthly Mortgage")
                    ExpensesField(data: userFinance.carPayment, info: "Monthly Car Payment")
                    ExpensesField(data: userFinance.creditPayment, info: "Monthly Credit Card Payment")
                    ExpensesField(data: userFinance.phoneBill, info: "Monthly Phone Bill")
                    ExpensesField(data: userFinance.concert, info: "Monthly Concert Expenses")
                }
                Group{
                    ExpensesField(data: userFinance.food, info: "Monthly Food Bill")
                    ExpensesField(data: userFinance.alcohol, info: "Monthly Alcohol")
                    ExpensesField(data: userFinance.tobacco, info: "Monthly Tobacco")
                    ExpensesField(data: userFinance.drugs, info: "Monthly Recreation Drug Bill")
                    ExpensesField(data: userFinance.shopping, info: "Monthly Retail Shopping")
                    ExpensesField(data: userFinance.gas, info: "Monthly Gas Bill")
                }
                NavigationLink(destination: AdvancedResult()){
                    Text("Results")
                        .foregroundColor(Color.softBlue)
                }.background(Group{
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .frame(width: 300, height: 50, alignment: .center)
                })
                .padding(.top, 20)
                .padding(.bottom, 40)
            }.padding(.top, 175)
            .onTapGesture {
                self.hideKeyboard()
            }
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
}

struct Advanced_Previews: PreviewProvider {
    static var previews: some View {
        Advanced().environmentObject(UserFinance())
    }
}

struct ExpensesField: View {
    @State var data : String
    @State var info : String
    var body: some View {
        VStack{
            Text(info)
            TextField("", text: $data)
                .textFieldStyle(neomorphField(icon: "calendar"))
                .keyboardType(.numberPad)
        }
//        .padding(.top, 50)
    }
}
