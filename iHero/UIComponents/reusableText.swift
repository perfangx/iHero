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
  //  var size: Int
    var body: some View {
        VStack{
            // Q TITLE
            Text(title)
                .font(.title).fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
            
            // PROGRESS BAR
            Rectangle()
                .frame(width: 300,height: 20)
                .cornerRadius(20)
                .padding(.bottom)
            
            //Q IMAGE
            Rectangle()
                .frame(width: 291,height: 241)
            VStack(alignment: .center){
                // Q TEXT
                Text(QuizQuestion)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 291, height: 50)
                    .padding()
            }
        }
    }
}
