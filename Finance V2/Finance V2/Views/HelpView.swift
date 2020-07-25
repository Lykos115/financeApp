//
//  HelpView.swift
//  Finance V2
//
//  Created by Lykøs on 6/14/20.
//  Copyright © 2020 WolfPack. All rights reserved.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        ZStack{
            Color.clear
            VStack{
                Text("Help Screen")
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
