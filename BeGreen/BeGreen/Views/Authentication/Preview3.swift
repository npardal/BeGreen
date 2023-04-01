//
//  Preview3.swift
//  BeGreen
//
//  Created by Nicole Pardal on 2023-04-01.
//

import SwiftUI

struct Preview3: View {
    var body: some View {
        NavigationView{
            GeometryReader { geometry in
            ZStack{
                    VStack{
                        Text("BeGreel.")
                        
                            .padding(.top, 20)
                            .font(.custom("AvenirLTStd-Black", size: 30))
                        Spacer()
                        Image("growing")
                            .resizable()
                            .frame(width: 370, height: 330)
                            .padding(.top, 30)
                        
                        Spacer()
                        
                        Text("Connect Sustainably")
                            .padding(.bottom, 20)
                            .font(.custom("AvenirLTStd-Black", size: 25))
                        
                        Text("Wanna make a difference in the community while having fun with your friends? We gotchu.")
                            .lineSpacing(9)
                            .multilineTextAlignment(.center)
                        
                            .padding(.bottom, 20)
                            .font(.custom("AvenirLTStd-Roman", size: 15))
                        HStack{
                            
                            Button(action: {}
                                   // Your button action here
                            ) {
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.black)
                            }
                            NavigationLink(destination: Preview2(), label: {
                            Button(action: {}
                                   // Your button action here
                            ) {
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.gray)
                            }})
                            Button(action: {}
                                   // Your button action here
                            ) {
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.gray)
                            }
                        }
                        NavigationLink(destination: Preview2()) {
                            Button(action: {
                                // your sign in action here
                            }) {
                                Text("Continue")
                                    .foregroundColor(.white) .font(.custom("AvenirLTStd-Roman", size: 15))
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 30)
                                            .fill(LinearGradient(
                                                gradient: Gradient(colors: [CustomColor.turquoise, .blue]),
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            ))
                                            .frame(width: 300, height: 42 )
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 30)
                                                    .stroke(CustomColor.turquoise)
                                                
                                                    .frame(width: 300, height: 42 )
                                            )
                                    )
                            }
                        }
                       
                        
                        .padding()
                        NavigationLink(destination: Preview2(), label: {
                            Button(action: {}, label: {
                                HStack{
                                    Text("Already have an account?")
                                        .foregroundColor(.black)
                                        .font(.custom("AvenirLTStd-Roman", size: 14))
                                    
                                    Text("Sign In")
                                        .foregroundColor(.black)
                                        .font(.custom("AvenirLTStd-Black", size: 14))
                                }.padding()
                                
                            })})
                    }.frame(width: UIScreen.main.bounds.size.width - 65)
                        .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    
                }  .frame(width: geometry.size.width, height: geometry.size.height)
                    .background(CustomColor.background)
                
            }
        }
    }
}


struct Preview3_Previews: PreviewProvider {
    static var previews: some View {
        Preview3()
    }
}
