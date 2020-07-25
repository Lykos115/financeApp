//
//  HomeView.swift
//  Finance V2
//
//  Created by Lykøs on 6/12/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Color.clear
            VStack{
                Spacer()
                VStack{
                    Text("Tip of the day")
                        .font(.largeTitle)
                        .bold()
                    HStack{
                        Spacer()
                        Text("- Some Smart Person")
                            .padding()
                    }
                }
                .padding(.top, 100)

                VStack{
                Button(action:{}){
                    VStack{
                        Image(systemName: "chart.bar.fill")
                            .resizable()
                            .frame(width: 100, height: 75)
                        Text("Last Graph Saved")
                    }
                }
                .buttonStyle(simpleButtonStyle(bttnWidth: 300, bttnHeight: 150))
                HStack{
                    NavigationLink(destination: firstInputView()){
                        VStack{
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Start")
                        }
                    }.buttonStyle(simpleButtonStyle(bttnWidth: 125, bttnHeight: 125))
                    Button(action:{}){
                        VStack{
                            Image(systemName: "bitcoinsign.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Financial\nResources")
                        }
                    }.buttonStyle(simpleButtonStyle(bttnWidth: 125, bttnHeight: 125))
                }
                Spacer()
            }.padding(.top,100)
//                .padding()
            }
//            Spacer()
        }
//        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
