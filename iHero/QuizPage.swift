//
//  QuizPage.swift
//  iHero
//
//  Created by roba on 09/02/2023.
//

import SwiftUI

struct QuizPage: View {
    @ObservedObject var gameManagerVM : GameManagerVM
   // var gameManagerVM : GameManagerVM
    var currentLevel : Int = 0
    var QuizPageTopic : String = ""
    @Environment(\.presentationMode) var presentationMode

//    @State var hitPoints : Int = 5
    //to select buttons
//    @State var didTap:Bool = false
    //r
    var body: some View {
        NavigationView(){
            ZStack{
                
                //background color
                Color("bgColor")
                    .ignoresSafeArea()
                
                if(gameManagerVM.model.quizCompleted){
                    QuizCompletedView(gameManagerVM:gameManagerVM)
                }else {
                    //**** CONTENT *******
                    VStack{
                      //  Text(QuizPageTopic)
                     //   Text("\(currentLevel)")
                        // TITLE AND QUESTION
                        reusableText(title: gameManagerVM.model.quizModel.quizTitle, QuizQuestion: gameManagerVM.model.quizModel.question, progressPrecent: gameManagerVM.progressPrecent )
                        //Q OPTIONS
                        OptionGridView(gameManagerVM: gameManagerVM)
                        
                        Spacer()
                        
                    }
                }
            }
        .navigationBarTitleDisplayMode(.inline)
            //***** TOOL BAR *****
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack{
                    //X BUTTON
                    //                    Button{
                    //                        self.gameManagerVM.restartGame()
                                            
                    //                    } label: {
                                        //-----
                    //                    NavigationLink(destination: Main(gameVM: GameManagerVM())) {
                    //                        Image(systemName: "xmark.circle")
                    //                            .foregroundColor(.white)
                    //                    }
                    //                    .onDisappear {
                    //                        self.gameManagerVM.restartGame()
                    //                    }
                                        //-------
                                        Button(action: {
                                            self.gameManagerVM.restartGame()
                                            self.presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark.circle")
                                                .foregroundColor(.white)
                                        }

                    //                        NavigationLink(destination:
                    //                                        Main(gameVM: GameManagerVM())
                    //                                       , label: { Image(systemName: "xmark.circle")
                    //                            .foregroundColor(.white)})
                                           
                    //                    }
                    
//      *********************************************
                    
//                    //X BUTTON
//                    Button{
//                        gameManagerVM.restartGame()
//                    } label: {
//                        NavigationLink(destination:
//                                        Main(gameVM: GameManagerVM())
//                                       , label: { Image(systemName: "xmark.circle")
//                            .foregroundColor(.white)})
//
//                    }
//
                    Spacer()
                  //HEART COUNTS
                        Image(systemName: "heart.fill")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("darkRed")/*@END_MENU_TOKEN@*/)
                    Text("\(gameManagerVM.hitPoints)")
                            .foregroundColor(.white)
                    
                }
                .padding()
            }
        }
     
            
        }
        .navigationBarBackButtonHidden(true)
        .onAppear{
            switch QuizPageTopic{
            case "Abnormal Sugar Levels" : do {
                switch currentLevel {
                case  1: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
                }
                case  2: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+3)
                }
                case  3: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+6)
                }
                case  4: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+9)
                }
                default: break
                    
                }
            }
            case "CPR" : do {
                switch currentLevel {
                case  1: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+12)
                }
                case  2: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+15)
                }
                case  3: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+18)
                }
                case  4: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+21)
                }
                default: break
                    
                }
            }
            case "Burns" : do {
                switch currentLevel {
                case  1: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+24)
                }
                case  2: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+27)
                }
                case  3: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+30)
                }
                case  4: do {
                    gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex+33)
                }
                default: break
                    
                }
            }

              
            default:
                break
            }
//            if(currentLevel == 1){
//              //  GameManagerVM.currentIndex = currentLevel
//                gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
//                print(GameManagerVM.currentIndex)
//                // Text("\(GameManagerVM.currentIndex)")
//            }
//            else {
//                GameManagerVM.currentIndex = GameManagerVM.currentIndex+3
//                gameManagerVM.model=GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
//            }
        }
        
    }
}

struct QuizPage_Previews: PreviewProvider {
    static var previews: some View {
        QuizPage(gameManagerVM: GameManagerVM())
    }
}

