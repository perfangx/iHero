//
//  reusableText.swift
//  iHero
//
//  Created by roba on 09/02/2023.
//

import Foundation
import SwiftUI

struct reusableText: View {
    var title: String
    var QuizQuestion: String
    var progressPrecent: CGFloat
    var width: CGFloat = 300
    var height: CGFloat = 20
    var quizImage: String
  //  var size: Int
    var body: some View {
        VStack{
            // Q TITLE
            Text(title)
                .font(.title).fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
            
            // PROGRESS BAR
            ZStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 20,style: .continuous)
                    .frame(width: width,height: height)
                    .foregroundColor(Color("secBGColor"))
                
                RoundedRectangle(cornerRadius: 20,style: .continuous)
                    .frame(width: progressPrecent ,height: height)
                    .foregroundColor(Color("secondaryColor"))
                    .animation(.linear)
            }
                .padding()
            
            //Q IMAGE
            Image(quizImage)
                .resizable()
                .frame(width: 291,height: 241)
            VStack(alignment: .center){
                // Q TEXT
                Text(QuizQuestion)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 291, height: 110)
                    .padding()
            }
        }
    }
}
