//
//  WeeklyView.swift
//  Finance
//
//  Created by Lykøs on 5/21/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct WeeklyView: View {
    @State private var expense: String = ""

    var body: some View {
            VStack{
                VStack{
                    Text("Other Weekly Income")
                    TextField("", text: $expense)
                        .frame(width: 150, height: nil, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack{
                    Text("Weekly Food Bill")
                    TextField("", text: $expense)
                        .frame(width: 150, height: nil, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack{
                    Text("Weekly Alcohol")
                    TextField("", text: $expense)
                        .frame(width: 100, height: nil, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack{
                    Text("Weekly Tobacco")
                    TextField("", text: $expense)
                        .frame(width: 150, height: nil, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack{
                    Text("Monthly Car Payment")
                    TextField("", text: $expense)
                        .frame(width: 150, height: nil, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack{
                    Text("Monthly Insurance")
                    TextField("", text: $expense)
                        .frame(width: 150, height: nil, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack{
                    Text("Monthly Credit Payment")
                    TextField("", text: $expense)
                        .frame(width: 150, height: nil, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack{
                    Text("Monthly Phone Bill")
                    TextField("", text: $expense)
                        .frame(width: 150, height: nil, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack{
                    Text("Monthly Concer Expenses")
                    TextField("", text: $expense)
                        .frame(width: 150, height: nil, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                NavigationLink(destination: ResutlsView()){
                    Text("Result")
                }
            }
        
    }
}

struct WeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyView()
    }
}
