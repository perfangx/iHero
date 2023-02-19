//
//  OptionsGridView.swift
//  iHero
//
//  Created by roba on 09/02/2023.
//

import Foundation
import SwiftUI

struct OptionGridView: View{
    var gameManagerVM: GameManagerVM
    var columns: [GridItem] = Array(repeating: GridItem(.fixed(170),spacing: 10 ), count: 2)
   // @State private var quizRecord = GameManagerVM.quizData[0]
    var body: some View{
        LazyVGrid(columns: columns){
            ForEach(gameManagerVM.model.quizModel.optionList){ QuizOption in
                OptionCardView(quizOption: QuizOption)
                    .onTapGesture {
                        gameManagerVM.verifyAnswer(selectedOption: QuizOption)
                    }
            }
        }
    }
   // func verifyAnswer(selectedOption: QuizOption){
   //        if let index = quizRecord.optionList.firstIndex(where: {$0.optionId == selectedOption.optionId}){
   //            if selectedOption.optionId == GameManagerVM.quizData[0].answer {
   //                quizRecord.optionList[index].isMatched = true
   //                quizRecord.optionList[index].isSelected = true
   //            } else {
   //                quizRecord.optionList[index].isMatched = false
   //                quizRecord.optionList[index].isSelected = true
   //            }
   //        }
   //    }
 
}


struct OptionCardView: View{
    var quizOption: QuizOption
    var body: some View{
        VStack{
//            //if the selected option is correct
//            if ( quizOption.isMatched) && (quizOption.isSelected) {
//                OptionStatusImageView(imageName: "checkmark")
//            } //if the selected option is wrong
//            else if (!( quizOption.isMatched) && (quizOption.isSelected)){
//                OptionStatusImageView(imageName: "xmark")
//            } else {
                OptinView(quizOption: quizOption)
//            }
        }   .frame(width: 166,height: 70)
            .background(setBackgroundColor())
            .cornerRadius(8)
    }
    
    func setBackgroundColor() -> Color {
        if (quizOption.isMatched) && (quizOption.isSelected){
            return Color("successColor")
        } else if (!(quizOption.isMatched) && (quizOption.isSelected)){
            return Color("failColor")
        } else {
            return Color("secBGColor")
        }
    }
}

struct OptinView: View{
    var quizOption: QuizOption
    var body: some View{
        VStack{
          //  Text(quizOption.optionId)
                
            Text(quizOption.option)
              //  .frame(width: 166,height: 49)
                .cornerRadius(8)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

// add image above the selected choice
struct OptionStatusImageView: View{
    var imageName: String
    var body: some View{
        Image(systemName: imageName)
            .resizable()
            .aspectRatio( contentMode: .fit)
            .padding()
    }
}
