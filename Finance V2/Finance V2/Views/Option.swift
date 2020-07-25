//
//  Option.swift
//  Finance
//
//  Created by Lykøs on 5/29/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI
import Neumorphic

struct Option: View {
    var body: some View {
        ZStack{
            Color.appColor
            VStack{
                HStack{
                    VStack{
                        Text("Quick Calculation\nGeneral Tips\nCan't Save Data")
                            .fixedSize()
                            .padding()
                        NavigationLink(destination: Expense()){
                            Text("Simple")
                        }.buttonStyle(simpleButtonStyle(bttnWidth: 150, bttnHeight: 75))
                    }
                    Divider().hidden()
                    VStack{
                        Text("In Depth Calculations\nPersonalized Tips\nSave Data")
                            .fixedSize()
                            .padding()
                        NavigationLink(destination: Advanced()){
                            Text("Advanced")
                        }.buttonStyle(simpleButtonStyle(bttnWidth: CGFloat(150), bttnHeight: CGFloat(75)))
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
    }
}

struct simpleButtonStyle: ButtonStyle {
    var bttnWidth: CGFloat
    var bttnHeight: CGFloat
    func makeBody(configuration: Self.Configuration) -> some View {
        ZStack{
            Color.clear
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .softOuterShadow(darkShadow: Color.white.opacity(0.2), lightShadow: Color.black.opacity(0.07))
                .softInnerShadow(RoundedRectangle(cornerRadius: 20))
            configuration.label
                .foregroundColor(Color.black)
        }
        .edgesIgnoringSafeArea(.all)
        .frame(width:bttnWidth, height: bttnHeight)
        .padding()
        
    }
}

struct Option_Previews: PreviewProvider {
    static var previews: some View {
        Option()
    }
}
