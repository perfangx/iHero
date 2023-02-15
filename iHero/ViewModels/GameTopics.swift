//
//  GameTopics.swift
//  iHero
//
//  Created by Hajar on 2/14/23.
//
import Foundation
import SwiftUI
extension GameManagerVM
{
    static var GameData: [gameModel] {
       [
        gameModel(topic: "Abnormal Sugar Levels", color: "secondaryColor"),
        gameModel(topic: "CPR", color: "lightGreen"),
        gameModel(topic: "Burns", color: "darkGreen"),
//        ,gameModel(topic: "External Bleeding", color: "darkGreen")
        ]
        
//        gameModel(
//            topic: "Abnormal Sugar Levels", color: "secondaryColor", levels:
//                [
//                    Quizz( levelId: UUID(), currentQuestionIndex: currentIndex, quizModel: quizData[currentIndex]),
//                    Quizz( levelId: UUID(), currentQuestionIndex: currentIndex, quizModel: quizData[currentIndex]),
//                    Quizz( levelId: UUID(), currentQuestionIndex: currentIndex, quizModel: quizData[currentIndex])
//            ]
//        ),
//        gameModel(
//            topic: "Chocking", color: "lightGreen", levels: [Quizz( levelId: UUID(), currentQuestionIndex: currentIndex, quizModel: quizData[currentIndex])]
//        ),
//        gameModel(
//            topic: "External Bleeding", color: "darkGreen", levels: [Quizz( levelId: UUID(), currentQuestionIndex: currentIndex, quizModel: quizData[currentIndex])]
//        )
                
//        ]
    }
}

