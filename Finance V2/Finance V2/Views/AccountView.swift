//
//  AccountView.swift
//  Finance V2
//
//  Created by Lykøs on 6/14/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack{
            Color.appColor
            VStack{
//                Spacer()
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
                    
                }.padding(.top, 60)
                    .padding(.bottom, 40)
                VStack{
                    Button(action:{
                        //Copy link to clipboard
                        //OR
                        //Send Via Social Media
                    }){
                        HStack{
                            Text("Log Out")
                                .font(.system(size: 20))
                                .bold()
                        }.padding()
                    }.buttonStyle(settingsButton())
                    
                    Button(action:{
                        //Copy link to clipboard
                        //OR
                        //Send Via Social Media
                    }){
                        HStack{
                            Text("Clear Data")
                                .font(.system(size: 20))
                                .bold()
                        }.padding()
                    }.buttonStyle(settingsButton())
                    
                    Button(action:{
                        //Copy link to clipboard
                        //OR
                        //Send Via Social Media
                    }){
                        HStack{
                            Text("Delete Account")
                                .font(.system(size: 20))
                                .bold()
                        }.padding()
                    }.buttonStyle(settingsButton())
                    
                    Button(action:{
                        self.presentationMode.wrappedValue.dismiss()
                    }){
                        HStack{
                            Text("Cancel")
                                .font(.system(size: 20))
                                .bold()
                        }.padding()
                    }.buttonStyle(settingsButton())

                }
//                .padding(.top, 20)
                .padding(.bottom, 60)
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
