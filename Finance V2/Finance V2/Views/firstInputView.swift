//
//  firstInputView.swift
//  Finance
//
//  Created by Lykøs on 5/21/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct firstInputView: View {
    @EnvironmentObject var userFinance: UserFinance
    
    var body: some View {
        ZStack{
            Color.appColor
            VStack{
                VStack{
                    Text("What is your age?")
                    TextField("", text: $userFinance.age)
                        .textFieldStyle(neomorphField(icon: "calendar"))
                        .keyboardType(.numberPad)
                }
                
                VStack{
                    Text("Age you would like to see at?")
                    TextField("", text: $userFinance.futureAge)
                        .textFieldStyle(neomorphField(icon: "calendar"))
                        .keyboardType(.numberPad)
                }
                
                VStack{
                    Text("Money you have saved?")
                    TextField("", text: $userFinance.moneySaved)
                        .textFieldStyle(neomorphField(icon: "calendar"))
                        .keyboardType(.numberPad)
                }
                
                VStack{
                    Text("Money in Possesion?")
                    TextField("", text: $userFinance.moneyPossesion)
                        .textFieldStyle(neomorphField(icon: "calendar"))
                        .keyboardType(.numberPad)
                }
                
                NavigationLink(destination:Option()){
                    Text("Next Step")
                        .foregroundColor(Color.softBlue)
                }.buttonStyle(neomorphButton())
                
            }.onTapGesture {
                self.hideKeyboard()
            }
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
}

struct firstInputView_Previews: PreviewProvider {
    static var previews: some View {
        firstInputView().environmentObject(UserFinance())
    }
}

