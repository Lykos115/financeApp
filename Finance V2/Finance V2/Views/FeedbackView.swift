//
//  FeedbackView.swift
//  Finance V2
//
//  Created by Lykøs on 6/14/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct FeedbackView: View {
    @State var temp : String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
//        NavigationView{
            ZStack{
                Color.appColor
                VStack{
                    Spacer()
                    HStack{
                        Text("Feed Back")
                        .font(.title)
                        .bold()
                        .padding()
                        Spacer()
                    }
                    //figure out why input field wont breakline
                    TextField("Tell us what you love or hate", text: $temp)
                        .textFieldStyle(NeuFeedback())
                        .padding()
                    Button(action:{}){
                        Text("Submit")
                            .font(.system(size: 20))
                            .bold()
                    }.buttonStyle(settingsButton())
                    
                    Button(action:{
                        self.presentationMode.wrappedValue.dismiss()
                    }){
                        Text("Cancel")
                            .font(.system(size: 20))
                            .bold()
                    }.buttonStyle(settingsButton())
                    Spacer()
                }.padding()
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarBackButtonHidden(true)
//        }
//        .navigationBarHidden(true)
    }
}

public struct NeuFeedback : TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30).fill(Color.offWhite)
                .softOuterShadow(darkShadow: Color.white.opacity(0.1), lightShadow: Color.black.opacity(0.06))
                .softInnerShadow(RoundedRectangle(cornerRadius: 30), darkShadow: Color.black.opacity(0.6), lightShadow: Color.white.opacity(0.7), spread: 0.05, radius: 2)
            HStack{
                configuration
                    .foregroundColor(Color.gray)
                    .padding(.bottom,150)
                Spacer()
            }
            .frame(width:350, height: 200)
            .padding()
            
        }.frame(width: 350, height:200)
            .padding()
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView()
    }
}
