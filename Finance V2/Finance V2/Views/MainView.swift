//
//  MainView.swift
//  Finance V2
//
//  Created by Lykøs on 6/14/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State private var index : Int = 0
    var body: some View {
        NavigationView{
            ZStack{
                Color.appColor
                VStack{
                    ///Views
                    VStack{
                        VStack{
                            if self.index == 0{
                                HomeView()
                                    .padding(.bottom,155)
                            }else if self.index == 1{
                                HistoryView()
//                                    .padding(.bottom, 210)
//                                    .padding(.top, 250)
                                .padding(50)
                            }else if self.index == 2{
                                HelpView().padding(.top, 150)
                            }else{
                                SettingsView()
                                    .padding(.top,50)
                            }
                        }
                    }
                    ///Navigation
                    VStack{
                        ZStack{
                            ///Buttons
                            HStack(alignment: .bottom){
                                Spacer()
                                Button(action:{
                                    self.index = 0
                                }){
                                    if self.index == 0 {
                                        Image(systemName: "house")
                                            .foregroundColor(Color.black)
                                            .background(
                                                Group{
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 50, height: 50)
                                                            .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 45, height: 45)
                                                            .softInnerShadow(RoundedRectangle(cornerRadius: 20), darkShadow: Color.black.opacity(0.2), lightShadow: Color.white)
                                                    }
                                                }
                                        )
                                    }else{
                                        Image(systemName: "house")
                                            .foregroundColor(Color.black)
                                            .background(
                                                Group{
                                                    HStack{
                                                        RoundedRectangle(cornerRadius: 10)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 50, height: 50)
                                                            .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
                                                    }
                                                }
                                        )
                                    }
                                }.padding()//House Button
                                
                                Spacer()
                                
                                Button(action:{
                                    self.index = 1
                                }){
                                    if self.index == 1 {
                                        Image(systemName: "clock")
                                            .foregroundColor(Color.black)
                                            .background(
                                                Group{
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 50, height: 50)
                                                            .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 45, height: 45)
                                                            .softInnerShadow(RoundedRectangle(cornerRadius: 20), darkShadow: Color.black.opacity(0.2), lightShadow: Color.white)
                                                    }
                                                }
                                        )
                                    }else{
                                        Image(systemName: "clock")
                                            .foregroundColor(Color.black)
                                            .background(
                                                Group{
                                                    HStack{
                                                        RoundedRectangle(cornerRadius: 10)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 50, height: 50)
                                                            .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
                                                    }
                                                }
                                        )
                                    }
                                }.padding()
                                
                                Spacer()
                                
                                Button(action:{
                                    self.index = 2
                                }){
                                    if self.index == 2 {
                                        Image(systemName: "questionmark.circle")
                                            .foregroundColor(Color.black)
                                            .background(
                                                Group{
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 50, height: 50)
                                                            .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 45, height: 45)
                                                            .softInnerShadow(RoundedRectangle(cornerRadius: 20), darkShadow: Color.black.opacity(0.2), lightShadow: Color.white)
                                                    }
                                                }
                                        )
                                    }else{
                                        Image(systemName: "questionmark.circle")
                                            .foregroundColor(Color.black)
                                            .background(
                                                Group{
                                                    HStack{
                                                        RoundedRectangle(cornerRadius: 10)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 50, height: 50)
                                                            .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
                                                    }
                                                }
                                        )
                                    }
                                }.padding()
                                
                                Spacer()
                                
                                Button(action:{
                                    self.index = 3
                                }){
                                    if self.index == 3 {
                                        Image(systemName: "gear")
                                            .foregroundColor(Color.black)
                                            .background(
                                                Group{
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 50, height: 50)
                                                            .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 45, height: 45)
                                                            .softInnerShadow(RoundedRectangle(cornerRadius: 20), darkShadow: Color.black.opacity(0.2), lightShadow: Color.white)
                                                    }
                                                }
                                        )
                                    }else{
                                        Image(systemName: "gear")
                                            .foregroundColor(Color.black)
                                            .background(
                                                Group{
                                                    HStack{
                                                        RoundedRectangle(cornerRadius: 10)
                                                            .fill(Color.offWhite)
                                                            .frame(width: 50, height: 50)
                                                            .softOuterShadow(darkShadow: Color.black.opacity(0.2), lightShadow: Color.white.opacity(0.2))
                                                    }
                                                }
                                        )
                                    }
                                }.padding()
                                
                                Spacer()
                                
                            }.padding(.bottom, 300)//HStack for buttons
                        }//ZStak for Navigation
                    }//VStack for Navigation VStack

                }
            }.edgesIgnoringSafeArea(.all)
        }.navigationBarBackButtonHidden(true);
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
