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
                Text(gameManagerVM.model.quizWinningStatus ? "You finished": "game over, you lost")
                    .font(.title).fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                Text(gameManagerVM.model.quizWinningStatus ? "next level": "try again")
                    .font(.title).fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                
                
                Button {
                    gameManagerVM.restartGame()
                } label: {
                    Text("play again")
                        .frame(width:281 , height:41 )
                        .foregroundColor(.white)
                        .background(Color("primaryColor"))
                        .cornerRadius(8)
                        .fontWeight(.semibold)
                        .padding()
                }
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
                            Text("Next level")
                                .frame(width:281 , height:41 )
                                .foregroundColor(.white)
                                .background(Color("primaryColor"))
                                .cornerRadius(8)
                                .fontWeight(.semibold)
                                .padding()
                        }
                    }
            }
        }
    }
}
