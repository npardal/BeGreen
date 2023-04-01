//
//  Profile.swift
//  BeGreen
//
//  Created by Nicole Pardal on 2023-04-01.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 25){
                Spacer()
                Image("anusha")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 250)
                    .clipped()
                    .cornerRadius(2500)
                    .overlay(
                            Circle()
                                .stroke(CustomColor.yellow, lineWidth: 5)
                        )
                    .padding(.bottom, 10)
                    
                
                Text("Nathan Gasole")
                    .foregroundColor(.black)
                    .font(.custom("AvenirLTStd-Black", size: 21))
                
                Text("I love helping the environment all 🍀")
                    .font(.custom("AvenirLTStd-Roman", size: 15))
                    .foregroundColor(.black)
                    .padding(.bottom, 20)
                
                CategoryView(followers: 300, following: 12, points: 39)
                
                Text("Achievements")
                    .font(.custom("AvenirLTStd-Black", size: 20))
                    .frame(maxWidth:.infinity, alignment: .leading)
          
                    .padding(.leading, 20)
                   
          
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
                    
                }
                .frame(width: 350, height: 100)
                
                
                
               
                
                //MVVM -> model (data - users) viewmodel(business logic - adding users) view: initial view everytime the data changes
                
                //clas observable object that changes
                //user ID & password
                //observe the changes ->
                
                
                
            
                
            } .frame(width: geometry.size.width, height: geometry.size.height)
                .background(CustomColor.background)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            VStack(spacing: 25){
                Spacer()
                Image("anusha")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 250)
                    .clipped()
                    .cornerRadius(2500)
                    .overlay(
                            Circle()
                                .stroke(CustomColor.yellow, lineWidth: 5)
                        )
                    .padding(.bottom, 10)
                    
                
                Text("Nathan Gasole")
                    .foregroundColor(.black)
                    .font(.custom("AvenirLTStd-Black", size: 21))
                
                Text("I love helping the environment all 🍀")
                    .font(.custom("AvenirLTStd-Roman", size: 15))
                    .foregroundColor(.black)
                    .padding(.bottom, 20)
                
                CategoryView(followers: 300, following: 12, points: 39)
                
                Text("Achievements")
                    .font(.custom("AvenirLTStd-Black", size: 20))
                    .frame(maxWidth:.infinity, alignment: .leading)
          
                    .padding(.leading, 20)
                   
          
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
                    
                }
                .frame(width: 350, height: 100)
                
                
                
               
                
                //MVVM -> model (data - users) viewmodel(business logic - adding users) view: initial view everytime the data changes
                
                //clas observable object that changes
                //user ID & password
                //observe the changes ->
                
                
                
            
                
            } .frame(width: geometry.size.width, height: geometry.size.height)
                .background(CustomColor.background)
        }
    }
}



struct CategoryView: View {
    var followers: Int
    var following: Int
    var points: Int
    
    var body: some View {
        HStack {
            VStack {
                Text("Followers")
                   
                    .font(.custom("AvenirLTStd-Book", size: 15))
                    .padding(.bottom, 1)
                Text("\(followers)")
                    .font(.custom("AvenirLTStd-Roman", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(CustomColor.turquoise)
            }
            Spacer()
            VStack {
                Text("Following")
             
                    .font(.custom("AvenirLTStd-Book", size: 15))
                    .padding(.bottom, 2)
                Text("\(following)")
                    .font(.custom("AvenirLTStd-Roman", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(CustomColor.turquoise)
            }
            Spacer()
            VStack {
                Text("Points")
                    .font(.custom("AvenirLTStd-Book", size: 15))
                    .padding(.bottom, 2)
                Text("\(points)")
                    .font(.custom("AvenirLTStd-Roman", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(CustomColor.turquoise)
            }
        }
        .padding()
        .padding([.leading, .trailing], 18)
    }
}
