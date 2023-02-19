//
//  QuizCompletedView.swift
//  iHero
//
//  Created by roba on 09/02/2023.
//

import Foundation
import SwiftUI

struct QuizCompletedView: View{
    var gameManagerVM: GameManagerVM
    var body: some View{
      
            VStack{
                
                Image(gameManagerVM.model.quizWinningStatus ? "happyface": "sadface")
                    .resizable()
                    .frame(width: 99 ,height: 99)
                    .padding()

                Text(gameManagerVM.model.quizWinningStatus ? "Excellent": "Ooops !!")
                    .font(.title)
                    .fontWeight(.bold)
                    .font(.system(size:30))
                    .foregroundColor(.white)
                    .padding(12)
                Text(gameManagerVM.model.quizWinningStatus ? "Great job, you just completed this level": "You consumed all your hit points")
                    .fontWeight(.bold)
                    .font(.system(size:20))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                  //  .padding(.bottom,160)
                
                HStack{
                    
                    if (gameManagerVM.model.quizModel.question == GameManagerVM.quizData.last?.question){
                        Text("you reached the end of the game")
                            .font(.title).fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                    }
                    else {
                        if (gameManagerVM.model.quizWinningStatus){
                            Button {
                                gameManagerVM.nextGame()
                            } label: {
                                Text("Next Level")
                                    .frame(width:150 , height:41 )
                                    .foregroundColor(.white)
                                    .background(Color("secondaryColor"))
                                    .cornerRadius(8)
                                    .fontWeight(.semibold)
                                    .padding(10)
                                
                                // .padding(.top,180)
                                
                            }
                        }
                    }
                    
                    Button {
                        gameManagerVM.restartGame()
                    } label: {
                        Text("Play Again")
                            .frame(width:150  , height:41 )
                            .foregroundColor(.white)
                            .background(Color("primaryColor"))
                            .cornerRadius(8)
                            .fontWeight(.semibold)
                            .padding(10)
                        
                    }
                }.padding()
//                Button {
//                    gameManagerVM.restartGame()
//                } label:  {
//                    NavigationLink(destination:
//                                    Main(gameVM: GameManagerVM())
//                                   , label: {
//                        Text("Exit Level")
//                            .fontWeight(.bold)
//                            .font(.system(size:20))
//                            .padding()
//                            .foregroundColor(.red)})
//                   
//                }
               // .padding(.top,300)
                .presentationDetents([.medium,.large])
        }
    }
}
