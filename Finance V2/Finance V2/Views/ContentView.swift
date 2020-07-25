//
//  ContentView.swift
//  Finance
//
//  Created by Lykøs on 5/21/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI
import Neumorphic

struct ContentView: View {
    @State var Currentpage = 0
    @EnvironmentObject var userFinance: UserFinance
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.appColor
                VStack{
                    if(Currentpage == 0){
                        CardView(info: "Will You Be \nRich\n?", img: "walking")
                            .onTapGesture {
                                self.Currentpage += 1
                        }

                    }else if(Currentpage == 1){
                        CardView(info: "This App Is Based\nOff Your Current\nSituation", img: "tracks")
                            .onTapGesture {
                                self.Currentpage += 1
                        }

                    }else{
                        NavigationLink(destination: LogInView()){
                            CardView(info: "Get A Calculation Of\nYour Lifetime Income", img: "car")
                        }.foregroundColor(Color.black)

                    }
                    pageControl(current: Currentpage)
                }
//                .animation(.default)
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserFinance())
    }
}

struct pageControl : UIViewRepresentable{
    var current = 0;
    
    func makeUIView(context: UIViewRepresentableContext<pageControl>) -> UIPageControl {
        let page = UIPageControl()
        page.currentPageIndicatorTintColor = .black
        page.numberOfPages = 3
        page.pageIndicatorTintColor = .gray
        return page
    }
    func updateUIView(_ uiView: UIPageControl, context: UIViewRepresentableContext<pageControl>) {
        
        uiView.currentPage = current
        
    }
}

struct CardView: View {
    var info : String
    var img: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.white)
                .frame(width:400, height: 700)
                .softOuterShadow(darkShadow: Color.black.opacity(0.4), lightShadow: Color.white.opacity(0.4))
            VStack{
                Text(info)
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 40))
                
                Image(img)
                    .resizable()
                    .frame(width: 400, height: 400)
            }
        }
    }
}
