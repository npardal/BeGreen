//
//  Plant.swift
//  BeGreen
//
//  Created by Nicole Pardal on 2023-04-01.
//

import SwiftUI

struct Plant: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
              
                VStack{
                    HStack{
                        Text("Today's plant")
                            .font(.custom("AvenirLTStd-Book", size: 30))
                        Image("coin")
                            .resizable()
                            .frame(width: 30, height: 20)
                        
                    }
                    
                    
                    Spacer()
                    
                    ZStack{
                        Circle()
                            .fill(CustomColor.turquoise)
                            .frame(width: 300, height: 300)
                        
                        Image("sapling")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding(20)
                    }
                    Spacer()
                    
                    
                }
            } .frame(width: geometry.size.width, height: geometry.size.height)
            .background(CustomColor.background)   }
    }
}

struct Plant_Previews: PreviewProvider {
    static var previews: some View {
        Plant()
    }
}
