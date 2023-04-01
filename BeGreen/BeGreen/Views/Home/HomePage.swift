//
//  HomePage.swift
//  BeGreen
//
//  Created by Nicole Pardal on 2023-04-01.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack(alignment: .center){
                    Text("BeGreel")
                        .multilineTextAlignment(.center)
                        .font(.custom("AvenirLTStd-Roman", size: 17))
                        .padding(.top, 20)
                    
                    HStack {
                        Text("Morning, Nicole👋")
                            .font(.custom("AvenirLTStd-Black", size: 33))
                            .frame(maxWidth:.infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.leading, 20)
                        
                        Spacer()
                    }
                   
                    
                    Spacer()
                }.frame(width: geometry.size.width, height: geometry.size.height)
                    .background(CustomColor.background)
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
