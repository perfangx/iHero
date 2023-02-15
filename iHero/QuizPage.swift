//
//  QuizPage.swift
//  iHero
//
//  Created by roba on 09/02/2023.
//

import SwiftUI

struct QuizPage: View {
    @ObservedObject var gameManagerVM : GameManagerVM
//    @State var hitPoints : Int = 5
    //to select buttons
//    @State var didTap:Bool = false
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
                    Button{} label: {
                        Image(systemName: "xmark.circle")
                            .foregroundColor(.white)
                    }
                  
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
        
    }
}

struct QuizPage_Previews: PreviewProvider {
    static var previews: some View {
        QuizPage(gameManagerVM: GameManagerVM())
    }
}
