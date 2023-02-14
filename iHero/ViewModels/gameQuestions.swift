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
        QuizModel(quizTitle: "Abnormal Sugar Levels", question: "Diabetes is a chronic disease that occurs either when the pancreas does not produce enough insulin or when the body cannot effectively use the insulin it produces?",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "True", color: Color.yellow),
                               QuizOption(id: 12, optionId: "B", option: "False", color: Color.red),
                               ]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", question: "Is a hormone that regulates blood glucose?",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Glucose", color: Color.yellow),
                               QuizOption(id: 12, optionId: "B", option: "Insulin", color: Color.red),
                               QuizOption(id: 13, optionId: "C", option: "Amylin", color: Color.green),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol", color: Color.purple)]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", question: "The carbohydrates and sugars in what you eat and drink turns into?",
                  answer: "C",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Amylin", color: Color.yellow),
                               QuizOption(id: 12, optionId: "B", option: "Insulin", color: Color.red),
                               QuizOption(id: 13, optionId: "C", option: "Glucose", color: Color.green),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol", color: Color.purple)]),
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
