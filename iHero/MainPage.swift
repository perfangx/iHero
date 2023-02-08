//
//  Main.swift
//  iHero
//
//  Created by Hajar on 2/7/23.
//

import SwiftUI

struct Main: View {
    @State var hitPoints : Int = 5
    var body: some View {
        NavigationView {
            ZStack{
                Color("bgColor")
                    .ignoresSafeArea()
                VStack{
                    
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack{
                            Button{
                                
                            } label: {
                                Image(systemName: "book")
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            Text("iHero").font(.largeTitle).fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                            HStack{
                                Image(systemName: "heart.fill")
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("darkRed")/*@END_MENU_TOKEN@*/)
                                Text("\(hitPoints)")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        .padding()
                    }
                }
            }
        }
        //        .background(Color("bgColor"))
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
