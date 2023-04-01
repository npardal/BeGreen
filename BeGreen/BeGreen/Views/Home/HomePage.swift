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
                ScrollView{
                    
                    VStack(alignment: .center){
                        Text("BeGreel")
                            .multilineTextAlignment(.center)
                            .font(.custom("AvenirLTStd-Roman", size: 17))
                            .padding(.top, 20)
                        
                        HStack {
                            Text("Morning, Nicole👋")
                                .font(.custom("AvenirLTStd-Black", size: 33))
                                .frame(maxWidth:.infinity, alignment: .leading)
                                .padding(.top, 100)
                                .padding(.leading, 20)
                                .padding(.bottom, 30)
                      
                        }
                        
                        VStack{
                            HStack{
                                Text("Today's suggestion")
                                    .font(.custom("AvenirLTStd-Black", size: 20))
                                    .frame(maxWidth:.infinity, alignment: .leading)
                                    .padding(.leading, 20)
                                    .padding(.top, 5)
                                
                                Spacer()
                                
                                ZStack {
                                            RoundedRectangle(cornerRadius: 20)
                                        .fill(CustomColor.yellow)
                                            Text("Upload")
                                                .foregroundColor(.white)
                                    .font(.custom("AvenirLTStd-Roman", size: 16))                                        }
                                        .frame(width: 100, height: 35)
                                        .padding(.trailing, 15)
                            }
                            RoundedRectangle(cornerRadius: 40)
                                        .fill(Color.gray.opacity(0.2))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.yellow, lineWidth: 2)
                                        )
                                        .frame(height: 70)
                                        .padding()
                                        .overlay(
                                            HStack(spacing: 10) {
                                                Image("idea")
                                                    .resizable()
                                                    .frame(width: 40, height: 40)
                                                Text("Pick up some trash on the ground")
                                                    .font(.custom("AvenirLTStd-Roman", size: 15))
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 14))
                                                    .padding(10)
                                            }
                                            .padding(20)
                                        )
                        }
                        
                    
                        ZStack{
                            
                            VStack{
                                HStack{
                                    ZStack{
    
                                        Circle()
                                            .fill(CustomColor.turquoise)
                                        Image("sapling")
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                    }.padding(.leading, 20)
                                    Text("@KanyeQuest ")
                                        .font(.custom("AvenirLTStd-Roman", size: 17))
                                    Spacer()
                                    Text("18 mins ago")
                                        .font(.custom("AvenirLTStd-Roman", size: 12))
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 20)
                                }
                                Image("man")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 350, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(CustomColor.turquoise, lineWidth: 6)
                                    )
                                
                             
                            }
                            
                        }
                        
                        
                     
                    }.frame(width: geometry.size.width, height: geometry.size.height)
                        .background(CustomColor.background)
                        .ignoresSafeArea()
                }
            }.frame(width: geometry.size.width)
                .background(CustomColor.background)
                .ignoresSafeArea()
                
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
