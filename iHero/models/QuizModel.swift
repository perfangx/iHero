//
//  QuizModel.swift
//  iHero
//
//  Created by roba on 09/02/2023.
//

import Foundation
import SwiftUI

//each level
struct Quizz {
    var levelId: UUID
    var currentQuestionIndex: Int //id
    var quizModel: QuizModel
    var quizCompleted: Bool = false
    var quizWinningStatus: Bool = false
    var isLocked : Bool = true //all levels will be locked
    
}

//each question
struct QuizModel {
    var quizTitle: String
    var quizLevelNum : Int
    var question: String
    var answer: String
    var optionList: [QuizOption]
}

//each option in question
struct QuizOption: Identifiable {
    var id: Int// turn it to UUID
    var optionId: String
    var option: String
    var isSelected: Bool = false
    var isMatched: Bool = false
}
