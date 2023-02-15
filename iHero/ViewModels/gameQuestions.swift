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
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 0, question: ":Diabetes is a chronic disease that occurs either when the pancreas does not produce enough insulin or when the body cannot effectively use the insulin it produces?",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False"),
                               ]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 0, question: "is a hormone that regulates blood glucose",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Glucose"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Amylin"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 0, question: "The carbohydrates and sugars in what you eat and drink turns into?",
                  answer: "C",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Amylin"),
                               QuizOption(id: 12, optionId: "B", option: "Insulin"),
                               QuizOption(id: 13, optionId: "C", option: "Glucose"),
                               QuizOption(id: 14, optionId: "D", option: "Cortisol")]),
        
        
        //MARK: level 2 questions in Abnormal Sugar Levels
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "Diabetes divided into two types ?",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False"),
                               ]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "What is type 1 diabetes ?",
                  answer: "C",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "The body cannot effectively use the insulin"),
                               QuizOption(id: 12, optionId: "B", option: "This Type diabetes is the most common form of diabetes. This Type  diabetes has historically been diagnosed primarily in adults"),
                               QuizOption(id: 13, optionId: "C", option: "referred to as insulin-dependent diabetes. People with this Type must take insulin or other medications daily. This makes up for the insulin not being produced by the body"),
                               QuizOption(id: 14, optionId: "D", option: "None")]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "What is the tips to control your blood sugar",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Being physically active can lower your risk of developing diabetes"),
                               QuizOption(id: 12, optionId: "B", option: "Stay at a healthy weight to help prevent, delay or manage diabetes"),
                               QuizOption(id: 13, optionId: "C", option: "Eat Smart, Eat a healthy food"),
                               QuizOption(id: 14, optionId: "D", option: "All of the above")]),
        
        
        //MARK: level 3 questions in Abnormal Sugar Levels
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "A low heart rate of less than 100 per minute , Feeling tired ,Unaware and thirst , is the symptoms for?",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Low Blood Sugar Attack"),
                               QuizOption(id: 12, optionId: "B", option: "High Blood Sugar Attack"),
                               ]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "What is the first aid procedures for high blood sugar attack",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Drink water in quantity"),
                               QuizOption(id: 12, optionId: "B", option: "Take the medicine"),
                               QuizOption(id: 13, optionId: "C", option: "15 grams of fast-absorbing sugars such as half a cup of juice"),
                               QuizOption(id: 14, optionId: "D", option: "A&B")]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "Being physically active can’t lower your risk of developing diabetes and help you manage the disease if you already have it?",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False"),]),
        
        
        //MARK: level 4 questions in Abnormal Sugar Levels
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "What is the Symptoms for low blood sugar attack ?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Feeling hungry"),
                               QuizOption(id: 12, optionId: "B", option: "Trembling or shakiness, and sweating"),
                               QuizOption(id: 13, optionId: "C", option: "Feel confused and have difficulty concentrating and lose consciousness"),
                               QuizOption(id: 14, optionId: "D", option: "All of the above")]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "What is the first aid procedures for low blood sugar attack if the patient is unconscious ?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "The patient is given 15 grams of fast-absorbing sugars such as half a cup of juice."),
                               QuizOption(id: 12, optionId: "B", option: "Blood sugar is measured if the result is higher or equal to 70, the patient is given 15 grams of carbohydrates"),
                               QuizOption(id: 13, optionId: "C", option: "If blood sugar is less than 70, give the patient 15 grams of fast-absorbing sugars until the blood sugar rises to 70 or more, and then the patient is given a snack"),
                               QuizOption(id: 14, optionId: "D", option: "All of the above")]),
        QuizModel(quizTitle: "Abnormal Sugar Levels", quizLevelNum: 1, question: "The first aid procedure for low blood sugar attack if the patient is conscious is The patient is injected with glucagon injection after 15 to 20 minutes. Blood sugar will rise and a snack will be taken. If the injection is not available, the patient should be hospitalized as soon as possible?",
                  answer: "A",
                  optionList: [
                               QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False")]),
        
        
        
        
        
        
        
        //MARK: level 1 questions in CPR
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "The human brain and heart cannot withstand the interruption of blood and oxygen for more than ….. minutes, as the cells of the brain and heart begin to die after the passage of these ….. minutes.",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "6"),
                               QuizOption(id: 12, optionId: "B", option: "10"),
                               QuizOption(id: 13, optionId: "C", option: "12"),
                               QuizOption(id: 14, optionId: "D", option: "4")]),
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "The importance of heart and lungs resuscitation is reflected in the fact that it provides the heart and brain with blood and oxygen to increase the chances of survival",
                  answer: "A",
                  optionList: [
                               QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False")]),
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "Every minute you pass the patient without ambulance reduces the chances of the patient surviving",
                  answer: "A",
                  optionList: [
                               QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False")]),
        
        
        //MARK: level 2 questions in CPR
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "CPR is a ?",
                  answer: "C",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "It is the sudden cessation of the heart from beating so that the process of pumping blood to the lungs, brain and other organs stops"),
                               QuizOption(id: 12, optionId: "B", option: "The resuscitation of the heart is done by manual pressure on the patient heart area so that blood is pumped to the vital parts of the affected patient"),
                               QuizOption(id: 13, optionId: "C", option: "the medic resuscitates the lung and heart. The resuscitation of the lung is done through the delivery of air and oxygen to it through ventilation, and the resuscitation of the heart is done by manual pressure on the patient heart area so that blood is pumped to the vital parts of the affected patient, especially the brain."),
                               QuizOption(id: 14, optionId: "D", option: "thereby stopping the air entering the lungs and thus cutting off oxygen from the lungs and the rest of the body's organs")]),
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "What causes CPR",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Diseases/heart problems/heart attack."),
                               QuizOption(id: 12, optionId: "B", option: "Cardiac arrest."),
                               QuizOption(id: 13, optionId: "C", option: "Drowning/choking"),
                               QuizOption(id: 14, optionId: "D", option: "All the above")]),
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "It is the sudden cessation of the heart from beating so that the process of pumping blood to the lungs, brain and other organs stops?",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "CPR"),
                               QuizOption(id: 12, optionId: "B", option: "Cardiac arrest"),
                               QuizOption(id: 13, optionId: "C", option: "The stop of the lungs"),
                               QuizOption(id: 14, optionId: "D", option: "None")]),
        
        
        //MARK: level 3 questions in CPR
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "The First step of the CPR is ?",
                  answer: "B",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Check for 10 seconds whether or not the patient  is breathing"),
                               QuizOption(id: 12, optionId: "B", option: "Try to see if the patient is able to respond or not, and try to wake him up by shrugging and calling him loud and close to his ears."),
                               QuizOption(id: 13, optionId: "C", option: "Put the patient on the ground or hard surface and remove any pillows under his head"),
                               QuizOption(id: 14, optionId: "D", option: "Make sure the respiratory stream is open, use a head tilt method and chin lift")]),
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "How to use a head tilt method and chin lift",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Place two fingers from one of your hands under the injured person's chin and lift his head upwards"),
                               QuizOption(id: 12, optionId: "B", option: "Put your other palm on the injured forehead and press down,Look inside the patient mouth to make sure his mouth is free of any foreign object"),
                               QuizOption(id: 13, optionId: "C", option: "If the patient suffers from trauma or bruising, you should avoid moving his neck and try to open the respiratory tract by pressing the jaw"),
                               QuizOption(id: 14, optionId: "D", option: "All the above")]),
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "Check considering the observation of the height and drop of the chest, Hearing check by placing your ear in close proximity to the patient mouth and nose, these are the steps for ?",
                  answer: "B",
                  optionList: [
                               QuizOption(id: 11, optionId: "A", option: "CPR"),
                               QuizOption(id: 12, optionId: "B", option: "Check if the Patient breathe or not")]),
        
        
        //MARK: level 4 questions in CPR
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "Perform artificial respiration by blowing into the patient's mouth twice slowly  over a period of one and a half to two seconds. Watch the height of the patient's chest after blowing in his mouth and wait for his chest to fall between the first and second puff , when do you  this operation ?",
                  answer: "c",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "When the patient is breathing "),
                               QuizOption(id: 12, optionId: "B", option: "Before the CPR"),
                               QuizOption(id: 13, optionId: "C", option: "When the patient is not breathing"),
                               QuizOption(id: 14, optionId: "D", option: "None")]),
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "If there’s no  signs that the Patient is still alive or that the injured person's heart is still beating do ?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Press the patient  chest to return his heart to work 15 times"),
                               QuizOption(id: 12, optionId: "B", option: "Place your middle finger on the chest bone and then place your index finger alongside the middle finger"),
                               QuizOption(id: 13, optionId: "C", option: "Place your other hand over the palm of your hand, making both fingers in tangle"),
                               QuizOption(id: 14, optionId: "D", option: "All the above")]),
        QuizModel(quizTitle: "CPR", quizLevelNum: 0, question: "If there is no pulse, no need to  continue the rescue operation until the ambulance arrives and continue to inspect the pulse every few minutes",
                  answer: "B",
                  optionList: [
                               QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False")]),

       
        
        
        
        
        //MARK: level 1 questions in Burns
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "It is tissue damage caused by skin exposure to fire, prolonged exposure to sunlight or other radiation, as well as contact with incendiary surfaces, or chemicals ?",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Burning"),
                               QuizOption(id: 12, optionId: "B", option: "First degree burns"),
                               QuizOption(id: 13, optionId: "C", option: "Second degree burns"),
                               QuizOption(id: 14, optionId: "D", option: "All the Above")]),
        
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "Burns is divided into 2 types ?",
                  answer: "B",
                  optionList: [
                               QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False")]),
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "It is important to know the most serious signs of skin burns that should be evaluated and treated by a healthcare provider, as moderate to severe burns can cause a number of serious complications and require urgent treatment?",
                  answer: "A",
                  optionList: [
                               QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False")]),
        
        
        //MARK: level 2 questions in Burns
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "Surface skin burns only include the top layer of skin, are painful, dry and red, and turn white when pressed. Surface skin burns are healed during a period of three to six days without leaving scars",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "First degree burns"),
                               QuizOption(id: 12, optionId: "B", option: "Second degree burns"),
                               QuizOption(id: 13, optionId: "C", option: "Third degree burns"),
                               QuizOption(id: 14, optionId: "D", option: "All the above")]),
        
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "what is the first aid procedure for first degree burn ?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Cooling the burn to help calm the pain by placing the burned area underneath the running water of the tap and moderate cold for 10 to 15 minutes to relieve the pain."),
                               QuizOption(id: 12, optionId: "B", option: "Remove accessories,Take the painkiller if necessary"),
                               QuizOption(id: 13, optionId: "C", option: "Cover the burning area using wet bandage or cool clean cloth, to reduce the risk of infection."),
                               QuizOption(id: 14, optionId: "D", option: "All the above")]),
        
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "Don’t touch the bubbles from burning , do not apply any ointments or use butter or toothpaste and other treatments on burning ,do not use snow directly on the burned area, these are the prudence for first aid first degree burns?",
                  answer: "B",
                  optionList: [
                               QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False")]),
        
        
        //MARK: level 3 questions in Burns
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "Second burn degree is ?",
                  answer: "A",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Burning includes the top two layers of skin, these burns are painful when exposed to air, are red, and turn white when pressed. Partial surface skin burns are healed within a period of seven to 21 days"),
                               QuizOption(id: 12, optionId: "B", option: "Surface skin burns only include the top layer of skin, are painful, dry and red, and turn white when pressed. Surface skin burns are healed during a period of three to six days without leaving scar"),
                               QuizOption(id: 13, optionId: "C", option: "Be deeper in the skin, painful when pressed deep, but they do not turn white by pressing them. Deep skin burns heal after more than 21 days, usually leaving a severe scar."),
                               QuizOption(id: 14, optionId: "D", option: "None")]),
        
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "what is the first aid procedure for second degree burn ?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Remove jewelry, belts and others, especially around burned areas."),
                               QuizOption(id: 12, optionId: "B", option: "Cover the burning area using wet bandage or cool clean cloth"),
                               QuizOption(id: 13, optionId: "C", option: ":Cover open bubbles with dry and sterile bandage and take painkille"),
                               QuizOption(id: 14, optionId: "D", option: "All the above")]),
        
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "What is the procedure for second degree burn",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Remove burnt clothes stuck on the skin,Lay thin cotton on the affected area"),
                               QuizOption(id: 12, optionId: "B", option: "Place large burned areas inside cold water to avoid trauma to the injured"),
                               QuizOption(id: 13, optionId: "C", option: "Apply any ointments or use butter or toothpaste, or other treatments to burn"),
                               QuizOption(id: 14, optionId: "D", option: "None")]),
        
        
        //MARK: level 4 questions in Burns
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "Third degree burn It is one of the most serious burns where all layers of the skin are included down to fat, and muscles may be affected?",
                  answer: "A",
                  optionList: [
                               QuizOption(id: 11, optionId: "A", option: "True"),
                               QuizOption(id: 12, optionId: "B", option: "False")]),
        
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "what is the first aid procedure for third degree burn?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: " Contact the ambulance immediately,Check the patient's vital signs such as breathing."),
                               QuizOption(id: 12, optionId: "B", option: "Protect the injured person from damage by removing them from flammable materials, smoke or heat sourcesr"),
                               QuizOption(id: 13, optionId: "C", option: "Cover the burning area using wet bandage or cool clean cloth"),
                               QuizOption(id: 14, optionId: "D", option: "All the above")]),
        
        QuizModel(quizTitle: "Burns", quizLevelNum: 0, question: "what is the wrong procedures to do with third degree burns?",
                  answer: "D",
                  optionList: [QuizOption(id: 11, optionId: "A", option: "Remove burnt clothes stuck on the skin,Lay thin cotton on the affected area."),
                               QuizOption(id: 12, optionId: "B", option: "Place large burned areas inside cold water to avoid trauma to the injured"),
                               QuizOption(id: 13, optionId: "A", option: "Apply any ointments or use butter or toothpaste, or other treatments to burn"),
                               QuizOption(id: 14, optionId: "B", option: "All the above")])

       ]
        
    }
}
