//
//  QuizModel.swift
//  iHero
//
//  Created by roba on 09/02/2023.
//

import Foundation
import SwiftUI

struct Quizz {
    var currentQuestionIndex: Int
    var quizModel: QuizModel
    var quizCompleted: Bool = false
    var quizWinningStatus: Bool = false
}

struct QuizModel {
    var quizTitle: String
    var question: String
    var answer: String
    var optionList: [QuizOption]
}

struct QuizOption: Identifiable {
    var id: Int
    var optionId: String
    var option: String
    var color: Color
    var isSelected: Bool = false
    var isMatched: Bool = false
}
