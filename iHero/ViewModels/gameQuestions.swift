//
//  gameQuestions.swift
//  iHero
//
//  Created by roba on 09/02/2023.
//

import Foundation
import SwiftUI
extension GameManagerVM
{
    static var quizData: [QuizModel] {
       [
        QuizModel(quizTitle: "Abnormal Sugar Levels", question: "first question?",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1", color: Color.yellow),
                               QuizOption(id: 12, optionId: "B", option: "2", color: Color.red),
                               QuizOption(id: 13, optionId: "C", option: "3", color: Color.green),
                               QuizOption(id: 14, optionId: "D", option: "4", color: Color.purple)]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", question: "Second question?",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1", color: Color.yellow),
                               QuizOption(id: 12, optionId: "B", option: "2", color: Color.red),
                               QuizOption(id: 13, optionId: "C", option: "3", color: Color.green),
                               QuizOption(id: 14, optionId: "D", option: "4", color: Color.purple)]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", question: "third question?",
                  answer: "C",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1", color: Color.yellow),
                               QuizOption(id: 12, optionId: "B", option: "2", color: Color.red),
                               QuizOption(id: 13, optionId: "C", option: "3", color: Color.green),
                               QuizOption(id: 14, optionId: "D", option: "4", color: Color.purple)]),
        QuizModel(quizTitle: "Chocking", question: "forth question?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1", color: Color.yellow),
                               QuizOption(id: 12, optionId: "B", option: "2", color: Color.red),
                               QuizOption(id: 13, optionId: "C", option: "3", color: Color.green),
                               QuizOption(id: 14, optionId: "D", option: "4", color: Color.purple)]),
        QuizModel(quizTitle: "Chocking", question: "fifth question?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1", color: Color.yellow),
                               QuizOption(id: 12, optionId: "B", option: "2", color: Color.red),
                               QuizOption(id: 13, optionId: "C", option: "3", color: Color.green),
                               QuizOption(id: 14, optionId: "D", option: "4", color: Color.purple)]),
        QuizModel(quizTitle: "Chocking", question: "sixth question?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1", color: Color.yellow),
                               QuizOption(id: 12, optionId: "B", option: "2", color: Color.red),
                               QuizOption(id: 13, optionId: "C", option: "3", color: Color.green),
                               QuizOption(id: 14, optionId: "D", option: "4", color: Color.purple)])

       ]
    }
}
