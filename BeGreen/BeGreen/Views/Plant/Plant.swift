//
//  Plant.swift
//  BeGreen
//
//  Created by Nicole Pardal on 2023-04-01.
//

import SwiftUI


struct CircleContentsView: View {
    let text: String
    let isChecked: Bool
    
    var body: some View {
        Group {
            if isChecked {
                Image(systemName: "checkmark")
            } else {
                Text(text)
            }
        }
    }
}

struct Plant: View {
    let weekdays = ["M", "T", "W", "T", "F", "S", "S"]
       @State private var selected = Array(repeating: false, count: 7)

       private func toggleSelected(index: Int) {
           selected[index].toggle()
       }
    var body: some View {
        GeometryReader { geometry in
            ZStack {
              
                VStack{
                    VStack{
                        
                            Text("Your Sapling")
                                .font(.custom("AvenirLTStd-Black", size: 30))
                                .padding(.top, 50)
                        Text("Go Green, there is no plan B")
                            .padding(.top, 20)
                            .italic()
                            .font(.custom("AvenirLTStd-Book", size: 17))
                        
                        
                    }
                    
              
                    
                    ZStack{
                        Circle()
                            .fill(CustomColor.turquoise)
                            .frame(width: 300, height: 300)
                        
                        Image("sapling")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding(20)
                    }  .padding(.top, 30)
                    
                    HStack {
                                ForEach(0..<7) { index in
                                    Circle()
                                        .fill(selected[index] ? Color.yellow : Color.white)
                                        .overlay(CircleContentsView(text: weekdays[index], isChecked: selected[index]))
                                        .onTapGesture {
                                            toggleSelected(index: index)
                                        }
                                }
                            }.frame(width:  geometry.size.width - 100 )
                        .padding(.top, 40)
                    
                    
                    VStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(CustomColor.turquoise)
                                .opacity(0.1)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .opacity(0.1)
                                )
                            HStack {
                                Image("flame")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                
                                VStack(alignment: .leading){
                                    Text("1 day Streak!")
                                        .foregroundColor( Color.white)
                                        .font(.custom("AvenirLTStd-Black", size: 25))
                                    
                                        .padding(.bottom, 0.1)
                                    
                                    
                                    Text("Congratulations, collect your reward!")
                                        .multilineTextAlignment(.leading)
                                    
                                        .foregroundColor( Color.black)
                                        .font(.custom("AvenirLTStd-Book", size: 11))
                                        .lineSpacing(3)
                                }
                            }}
                        
                    }.padding(.top, 50)
                    .frame(width: 350, height: 100)
                    
                    Spacer()
                }.padding(.leading, 30)
                    .padding(.trailing, 30)
            } .frame(width: geometry.size.width, height: geometry.size.height)
            .background(CustomColor.background)   }
    }
}


struct Plant_Previews: PreviewProvider {
    static var previews: some View {
        Plant()
    }
}
