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
//        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 0, question: "Diabetes is a chronic disease that occurs either when the pancreas does not produce enough insulin or when the body cannot effectively use the insulin it produces?",
//                  answer: "A",
//                  optionList: [QuizOption(id: 11, optionId: "A", option: "True"),
//                               QuizOption(id: 12, optionId: "B", option: "False"),
//                               ]),
//        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 0, question: "Is a hormone that regulates blood glucose?",
//                  answer: "B",
//                  optionList: [QuizOption(id: 11, optionId: "A", option: "Glucose"),
//                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
//                               QuizOption(id: 13, optionId: "C", option: "Amylin"),
//                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
//        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 0, question: "The carbohydrates and sugars in what you eat and drink turns into?",
//                  answer: "C",
//                  optionList: [QuizOption(id: 11, optionId: "A", option: "Amylin"),
//                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
//                               QuizOption(id: 13, optionId: "C", option: "Glucose"),
//                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        
        //MARK: level 1 questions in Abnormal Sugar Levels
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 0, question: "q #1 in Abnormal Sugar Levels level #1",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False"),
                               ]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 0, question: "q #2 in Abnormal Sugar Levels level #1",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Glucose"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Amylin"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 0, question: "q #3 in Abnormal Sugar Levels level #1",
                  answer: "C",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Amylin"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Glucose"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        
        
        //MARK: level 2 questions in Abnormal Sugar Levels
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "q #1 in Abnormal Sugar Levels level #2",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False"),
                               ]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "q #2 in Abnormal Sugar Levels level #2",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Glucose"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Amylin"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "q #3 in Abnormal Sugar Levels level #2",
                  answer: "C",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Amylin"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Glucose"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        
        
        //MARK: level 3 questions in Abnormal Sugar Levels
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "q #1 in Abnormal Sugar Levels level #3",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False"),
                               ]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "q #2 in Abnormal Sugar Levels level #3",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Glucose"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Amylin"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "q #3 in Abnormal Sugar Levels level #3",
                  answer: "C",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Amylin"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Glucose"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        
        
        //MARK: level 4 questions in Abnormal Sugar Levels
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "q #1 in Abnormal Sugar Levels level #4",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False"),
                               ]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "q #2 in Abnormal Sugar Levels level #4",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Glucose"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Amylin"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "q #3 in Abnormal Sugar Levels level #4",
                  answer: "C",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Amylin"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Glucose"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        
        
        
        
        
        
        
        //MARK: level 1 questions in Chocking
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #1 in Chocking level #1",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #2 in Chocking level #1",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #3 in Chocking level #1",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        
        
        //MARK: level 2 questions in Chocking
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #1 in Chocking level #2",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #2 in Chocking level #2",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #3 in Chocking level #2",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        
        
        //MARK: level 3 questions in Chocking
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #1 in Chocking level #3",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #2 in Chocking level #3",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #3 in Chocking level #3",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        
        
        //MARK: level 4 questions in Chocking
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #1 in Chocking level #4",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #2 in Chocking level #4",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        QuizModel(quizTitle: "Chocking", quizLevelNum: 0, question: "q #3 in Chocking level #4",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "1"),
                               QuizOption(id: 12, optionId: "B", option: "2"),
                               QuizOption(id: 13, optionId: "C", option: "3"),
                               QuizOption(id: 14, optionId: "D", option: "4")])

       ]
    }
}
