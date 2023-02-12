//
//  GameManagerVM.swift
//  iHero
//
//  Created by roba on 09/02/2023.
//

import Foundation
import SwiftUI

class GameManagerVM : ObservableObject {
    
    static var levelStartIndex = 0
    static var levelQ = 0
    static var currentIndex = 0
    //Creating new game model
    static func createGameModel(i:Int) -> Quizz {
        return Quizz(currentQuestionIndex: i, quizModel: quizData[i])
    }
    
    @Published var model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
    @Published var hitPoints : Int = 3
    @Published var progressPrecent : CGFloat = 0
 
    

    
    func verifyAnswer(selectedOption: QuizOption){
        for index in model.quizModel.optionList.indices{
            //this to unselect a card once another one is clicked
            model.quizModel.optionList[index].isMatched = false
            model.quizModel.optionList[index].isSelected = false
        }
        
        if let index = model.quizModel.optionList.firstIndex(where: {$0.optionId == selectedOption.optionId}){
            //MARK: THE SELECTED OPTION IS CORRECT
            if selectedOption.optionId == model.quizModel.answer {
                model.quizModel.optionList[index].isMatched = true
                model.quizModel.optionList[index].isSelected = true
                
                //delay the move to next q after 1 sec of selecting the correct answer
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {

                    //each level have 3 Q only, move to next question
                    if (GameManagerVM.levelQ < 2) {
                        GameManagerVM.currentIndex = GameManagerVM.currentIndex + 1
                        GameManagerVM.levelQ = GameManagerVM.levelQ + 1
                        self.progressPrecent = self.progressPrecent + 100
                        self.model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
                    }
                    // if you reached the last question in the level
                    else {
                        self.model.quizCompleted = true
                        self.model.quizWinningStatus = true
                        GameManagerVM.levelStartIndex = GameManagerVM.levelStartIndex+3
                    }
                    }
            }
            //MARK: THE SELECTED OPTION IS WRONG
            else {
                //reduce 1 hit point and show red mark for the wrong option
                model.quizModel.optionList[index].isMatched = false
                model.quizModel.optionList[index].isSelected = true
                hitPoints = hitPoints-1
                if (hitPoints == 0){
                    //If u used all ur hitpoints then end the level
                    self.model.quizCompleted = true
                    self.model.quizWinningStatus = false
                    GameManagerVM.levelStartIndex = GameManagerVM.levelStartIndex+3
                    hitPoints = 3
                }
            }
                
        }
    }
    
    func restartGame(){
        GameManagerVM.levelQ = 0
        self.progressPrecent = 0
        if ((GameManagerVM.levelStartIndex == 3)||(GameManagerVM.levelStartIndex == 0)){
            GameManagerVM.levelStartIndex = 0
        }else{
            GameManagerVM.levelStartIndex = GameManagerVM.levelStartIndex-3
        }
        GameManagerVM.currentIndex = GameManagerVM.levelStartIndex
        model = GameManagerVM.createGameModel(i: GameManagerVM.levelStartIndex)
 
    }
    
    func nextGame(){
        model = GameManagerVM.createGameModel(i: GameManagerVM.levelStartIndex)
        self.progressPrecent = 0
        GameManagerVM.levelQ = 0
        GameManagerVM.currentIndex = GameManagerVM.currentIndex + 1
    }
}
