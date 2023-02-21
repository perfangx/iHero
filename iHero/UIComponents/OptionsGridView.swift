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
        }   .padding(.leading, 8)
            .padding(.trailing, 8)
            .frame(width: 166,height: 70)
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

extension String{
    var wordCount:Int{
        let chararacter = CharacterSet.whitespacesAndNewlines.union(.punctuationCharacters)
        let comps = components(separatedBy: chararacter)
        let words = comps.filter { !$0.isEmpty }
        return words.count
    }
}

struct OptinView: View{
    var quizOption: QuizOption
    var body: some View{
        VStack{
          //  Text(quizOption.optionId)
                
            Text(quizOption.option)
                .font(.system(size: quizOption.option.wordCount>10 ? 10 : 14))
                .font(.subheadline)
                .cornerRadius(8)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
              //  .frame(width: 166,height: 49)
                
               // .fixedSize(horizontal: false, vertical: true)
                
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
