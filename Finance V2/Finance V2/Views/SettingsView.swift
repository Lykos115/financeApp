//
//  SettingsView.swift
//  Finance V2
//
//  Created by Lykøs on 6/12/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @State private var status = true
    
    var body: some View {
//        VStack{
            VStack{
                Color.clear
                VStack{
                    //Hold User Image, Name, and Username
                    //Maybe only change profile images
                    VStack{
                        Button(action:{
                            //Open Gallery
                        }){
                            Image(systemName: "person")
                                .resizable()
                                .frame(width:100, height: 100)
                                .clipShape(Circle())
                        }.buttonStyle(profilePicture())
                        
                        HStack{
                            Text("First Name")
                                .font(.system(size: 25))
                                .bold()
                            Text("Last Name")
                                .font(.system(size: 25))
                                .bold()
                        }.padding()
                        Text("Username")
                            .bold()
                        
                    }
                    //                    .padding(.top, 140)
                    
                    //Holds all settings buttons
                    VStack{
                        
                        NavigationLink(destination:AccountView()){
                            HStack{
                                Text("Account")
                                    .font(.system(size: 20))
                                    .bold()
                                Spacer()
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                            }.padding()
                        }.buttonStyle(settingsButton())
                        
                        Toggle(isOn: $status){
                            Text(status ? "On" : "Off")
                                .font(.system(size: 20))
                        }.toggleStyle(NeuToggle(description: "Notifications"))
                        
                        Toggle(isOn: $status){
                            Text(status ? "On" : "Off")
                                .font(.system(size: 20))
                        }.toggleStyle(NeuToggle(description: "Dark Mode"))
                        
                        NavigationLink(destination:FeedbackView()){
                            HStack{
                                Text("Feed Back")
                                    .font(.system(size: 20))
                                    .bold()
                                Spacer()
                                Image(systemName: "arrow.up.right.square")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                            }.padding()
                        }.buttonStyle(settingsButton())
                        
                        Button(action:{
                            //Copy link to clipboard
                            //OR
                            //Send Via Social Media
                        }){
                            HStack{
                                Text("Share the App")
                                    .font(.system(size: 20))
                                    .bold()
                                Spacer()
                                Image(systemName: "square.and.arrow.up")
                                    .resizable()
                                    .frame(width: 25, height: 30)
                            }.padding()
                        }.buttonStyle(settingsButton())
                        
                        
                    }.padding()
                }.padding()
            }//.padding()
    }
}

struct profilePicture: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        
        ZStack{
            VStack{
                Circle()
                    .foregroundColor(Color.white)
            }.frame(width: 110, height: 110)
            configuration.label
                .frame(width: 70, height: 70)
                .padding()
                .background(
                    Circle()
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            )
        }
    }
}
struct settingsButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        ZStack{
            Color.clear
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.offWhite)
                .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
            //                .softOuterShadow(darkShadow: Color.white.opacity(0.2), lightShadow: Color.black.opacity(0.07))
            configuration.label
            .foregroundColor(Color.black)
        }
        .edgesIgnoringSafeArea(.all)
        .frame(width:350, height: 75)
        .padding(.bottom)
        
    }
}

struct NeuToggle: ToggleStyle {
    var description : String
    func makeBody(configuration: Configuration) -> some View {
        return ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 350, height: 75)
                .foregroundColor(Color.offWhite)
                .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
            HStack{
                Text(self.description)
                    .foregroundColor(Color.black)
                    .font(.system(size: 20))
                    .bold()
                Spacer()
                
                RoundedRectangle(cornerRadius: 16, style: .circular)
                    .fill(Color.white)
                    .softInnerShadow(RoundedRectangle(cornerRadius: 16, style: .circular), darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.7))
                    .softOuterShadow(darkShadow: Color.black.opacity(0.02), lightShadow: Color.white.opacity(0.02))
                    .frame(width: 100, height: 29)
                    .overlay(Group{
                        if configuration.isOn{
                            ZStack{
                                RoundedRectangle(cornerRadius: 16, style: .circular)
                                    .fill(Color.blue)
                                    .padding(1.5)
                                    .offset(x: 25)
                                    .frame(width: 45, height: 26)
                                    .softOuterShadow(darkShadow: Color.white.opacity(0.1), lightShadow: Color.black.opacity(0.1))
                                //                                    .softOuterShadow()
                                configuration.label
                                    .foregroundColor(Color.black)
                                    .offset(x: 25)
                            }
                        }else{
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 16, style: .circular)
                                    .fill(Color.offWhite)
                                    .padding(1.5)
                                    .offset(x: -25)
                                    .frame(width: 45, height: 26)
                                    .softOuterShadow(darkShadow: Color.white.opacity(0.1), lightShadow: Color.black.opacity(0.1))
                                configuration.label
                                    .offset(x: -25)
                            }
                        }
                    })
                    .onTapGesture { configuration.isOn.toggle() }
                    .animation(Animation.easeInOut(duration: 0.1))
            }
            .padding(.horizontal)
        }
        .padding(.bottom)
    }
}



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
