//
//  Sheet.swift
//  iHero
//
//  Created by Remaz Abdulkareem Alghamdi on 16/02/2023.
//


import SwiftUI

struct Sheet: View {
@State private var isShowing = false
@State private var isShowingTwo = false
@State private var amount = 0.0
var body: some View {
    VStack{
        Button("show sheet"){
            isShowing.toggle()
        }
        .sheet(isPresented: $isShowing)
        {
            ZStack{
                
                Color("bgColor")
                    .ignoresSafeArea()
                VStack{
                    
                    
                    Image("happyface")
                        .resizable()
                        .frame(width: 99 ,height: 99)
                        .padding()
                    Text("Excellent")
                        .font(.title)
                        .fontWeight(.bold)
                        .font(.system(size:30))
                        .foregroundColor(.white)
                        .padding(12)
                    Text("Great job, you just completed this level")
                        .fontWeight(.bold)
                        .font(.system(size:20))
                        .foregroundColor(.white)
                        .padding(.bottom,160)
                    
                }
                
                Button {
                    print(" ")
                    
                } label: {
                    Text("Next Level")
                        .fontWeight(.bold)
                        .font(.system(size:20))
                        .frame(width: 281, height: 20)
                        .padding()
                        .foregroundColor(.white)
                    
                        .background(Color("primaryColor"))
                        .cornerRadius(15)
                    
                        .padding(.top,180
                        )
                }
                Button {
                    print("")
                } label: {
                    Text("Exit Level")
                        .fontWeight(.bold)
                        .font(.system(size:20))
                        .padding()
                        .foregroundColor(.red)
                    
                }
                .padding(.top,300)
                .presentationDetents([.medium,.large])
                
            }
        }
        
        //sad sheet
        Button("show sheet"){
        isShowingTwo.toggle()

                }
                .padding(.top,70)
                .sheet(isPresented: $isShowingTwo)
                {
                    ZStack{
                        
                        Color("bgColor")
                            .ignoresSafeArea()
                        VStack{
                            
                            
                            Image("sadface")
                                .resizable()
                                .frame(width: 90 ,height: 92)
                              
                            Text("Ooops !!")
                                .font(.title)
                                .fontWeight(.bold)
                                .font(.system(size:30))
                                .foregroundColor(.white)
                                .padding(10)
                            Text("You consumed all your hit points")
                                .fontWeight(.bold)
                                .font(.system(size:20))
                                .foregroundColor(.white)
                                .padding(.bottom,120)
                            
                        }
                        
                        Button {
                            print(" ")
                            
                        } label: {
                            Text("Continue")
                                .fontWeight(.bold)
                                .font(.system(size:20))
                                .frame(width: 281, height: 20)
                                .padding()
                                .foregroundColor(.white)
                            
                                .background(Color("primaryColor"))
                                .cornerRadius(15)
                            
                                .padding(.top,192
                                )
                            
                        }
                        
                        
                        Button {
                            print("")
                        } label: {
                            Text("Exit Level")
                                .fontWeight(.bold)
                                .font(.system(size:20))
                                .padding()
                                .foregroundColor(.red)
                                .padding(.top,300
                                )
                        }
                        .presentationDetents([.medium,.large])
                    }
                }
            }
            
        }
        }

        struct Sheet_Previews: PreviewProvider {
        static var previews: some View {
        Sheet()
        }
        }
