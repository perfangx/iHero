//
//  SingleOnboardingView.swift
//  iHero
//
//  Created by Remaz Abdulkareem Alghamdi on 16/02/2023.
//

import SwiftUI

struct SingleOnbordingView: View {
@AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false
let onbordingType: OnbordingType

var body: some View {
    ZStack{
        Color("bgColor")
            .ignoresSafeArea()
        VStack(spacing:20) {
            
            Image(onbordingType.image)
                .resizable()
                .scaledToFit()
                .frame(width: 194, height: 149)
                
            Text(onbordingType.localizedString)
                .multilineTextAlignment(.center)
                .font(.title).bold()
                .foregroundColor(.white)

            Text(onbordingType.description)
                .font(.system(size:20))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .padding(.bottom, 100)
            
            if onbordingType == .Points {
               
                Button {
                    
                    withAnimation(.spring()) {
                       // isUserOnboarded = true
                    }
                }
                
                
            label: {
                NavigationLink(destination:
                                Main()
                               , label:{
                    Text("Get Started")
                        .font(.headline)

                        .padding()
                        .foregroundColor(Color.white)
                        .frame(width: 350, height: 42)
                        .background(Color("primaryColor"))
                        .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        
                })
                               }
            }
            
        }
        .padding(50)
        //.frame(width:199)
  
        
    }
// .ignoresSafeArea(.all)

}


struct SingleOnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        SingleOnbordingView(onbordingType: OnbordingType.Learning)
    }
}
}


