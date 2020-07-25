//
//  LogInView.swift
//  Finance V2
//
//  Created by Lykøs on 6/7/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI
import Neumorphic

extension Color{
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
    static let softPurple = Color(red: 120, green: 131, blue: 213, alpha: 1)
    static let softBlue = Color(red: 58, green: 207, blue: 252, alpha: 1)
    static let appColor = LinearGradient(Color.softBlue,Color.softPurple)
    static let fontColor = Color(red: 87, green: 176, blue: 233, alpha: 1)
    
}
extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct LogInView: View {
    @State private var holder: String = ""
    
    var body: some View {
        ZStack {
            Color.appColor
            VStack{
                VStack(alignment: .leading){
                    
                    Text("Welcome")
                        .foregroundColor(Color.white)
                        .font(.system(size: 20))
                        .softOuterShadow(darkShadow: Color.black.opacity(0.7), lightShadow: Color.white.opacity(0.2))
                    Text("Sign In")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .fontWeight(.semibold)
                        .softOuterShadow(darkShadow: Color.black.opacity(0.7), lightShadow: Color.white.opacity(0.2))
                    TextField("Username", text: $holder)
                        .textFieldStyle(neomorphField(icon: "person"))
                    
                    TextField("Password", text: $holder)
                        .textFieldStyle(neomorphField(icon: "lock"))
                    
                    NavigationLink(destination:MainView()){
                        //                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Sign In")
                            .foregroundColor(Color.fontColor)
                    }.buttonStyle(neomorphButton())
                }
                .padding()
                
                VStack(alignment: .center){
                    Text("OR")
                        .foregroundColor(Color.white)
                        .padding()
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("G")
                                .foregroundColor(Color.fontColor)
                                .fontWeight(.bold)
                        }.buttonStyle(neomorphAltAccount())
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("F")
                                .foregroundColor(Color.fontColor)
                                .fontWeight(.bold)
                        }.buttonStyle(neomorphAltAccount())
                    }
                }
            }
            .frame(width:400)
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        //        }//temp
    }
}

struct neomorphAltAccount: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        VStack{
            configuration.label
                .frame(width: 40, height: 40)
                .padding()
                .background(
                    Circle()
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            )
        }.padding()
    }
}

struct neomorphButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 300, height: 25)
            .padding()
            .background(
                Capsule()
                    .fill(Color.white)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        )
    }
}

public struct neomorphField : TextFieldStyle {
    var icon: String
    var inputWidth: CGFloat = 300
    public func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30).fill(Color.gray.opacity(0.3))
                .softOuterShadow(darkShadow: Color.white.opacity(0.2), lightShadow: Color.black.opacity(0.2))
                .softInnerShadow(RoundedRectangle(cornerRadius: 30), darkShadow: Color.black.opacity(0.7), lightShadow: Color.white.opacity(0.4), spread: 0.05, radius: 2)
            HStack{
                Image(systemName: icon).foregroundColor(Color.white).font(Font.body.weight(.bold))
                configuration
                    .foregroundColor(Color.white)
                Spacer()
            }
            .frame(width:inputWidth, height: 10)
            .padding()
            
        }.frame(width: inputWidth, height:40)
            .padding()
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}

