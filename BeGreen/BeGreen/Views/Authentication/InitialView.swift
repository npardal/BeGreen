//
//  InitialView.swift
//  BeGreen
//
//  Created by Nicole Pardal on 2023-04-01.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
        NavigationView{
            GeometryReader { geometry in
                ZStack{
                    VStack{
                        //MARK: Title
                        Spacer()
                        Text("BeTreel.")
                            .font(.custom("AvenirLTStd-Black", size: 70))
                            .padding(.bottom, 1)
                        Text("interact sustainably")
                            .font(.custom("AvenirLTStd-Roman", size: 14))
                       
                        Spacer()
                    }
                    VStack{
                        Spacer()
                        NavigationLink(destination: Preview1(), label: {
                            Button(action: {}, label: {
                                Text("Create an Account")
                                    .font(.custom("AvenirLTStd-Roman", size: 14))
                                    .foregroundColor(.white)
                                    .frame(width: 300, height: 50 )
                                    .background(CustomColor.turquoise)
                                    .cornerRadius(25)
                                    .padding(.horizontal, 32)
                            }).padding(.bottom, 5)
                        })
                        //MARK: Button 2 (Sign up)
                        NavigationLink(destination: Preview1(), label: {
                            Button(action: {}
                                   // Your button action here
                            ) {
                                Text("Sign In")
                                    .foregroundColor(.black)
                                    .font(.custom("AvenirLTStd-Roman", size: 14))
                            }
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(.gray), lineWidth: 1)
                                    .background(Color.clear)
                                    .frame(width: 300, height: 50 )
                            ).padding(.bottom, 10)
                        })
                        
                    }
                    
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                .background(CustomColor.background)
                
            }
            
        }
        
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
