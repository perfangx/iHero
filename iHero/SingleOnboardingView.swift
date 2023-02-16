//
//  SingleOnboardingView.swift
//  iHero
//
//  Created by Raghad alasmari on 18/07/1444 AH.
//


import SwiftUI

struct SingleOnbordingView: View {
    @AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false
    let onbordingType: OnbordingType
    
    var body: some View {
        ZStack{
            Color("background")
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
                            isUserOnboarded = true
                        }
                    }
                    
                    
                label: {
                    
                        Text("Get Started")
                            .font(.headline)

                            .padding()
                            .foregroundColor(Color.white)
                            .frame(width: 350, height: 42)
                            .background(Color("buttonColor"))
                            .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            
                    }
                  
                }
                
            } 
            .padding(50)
            //.frame(width:199)
      
            
        }
               
//        .ignoresSafeArea(.all)
        
    }

    
    struct SingleOnbordingView_Previews: PreviewProvider {
        static var previews: some View {
            SingleOnbordingView(onbordingType: OnbordingType.Learning)
        }
    }
    
}
