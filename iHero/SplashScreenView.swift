//
//  SplashScreenView.swift
//  iHero
//
//  Created by Lamia Aldossari on 17/02/2023.
//


import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive : Bool = false
    @State private var size = 0.5
    @State private var opacity = 0.5
    @AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false
    
    var body: some View {
        ZStack{
            Color("bgColor")
                .ignoresSafeArea()
            
            if isActive {
                if !isUserOnboarded {
                    OnbordingView()
                } else {
                    Main()
                }
            } else {
                ZStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(0.3, contentMode: .fit)
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.2)) {
                                self.size = 1.00
                                self.opacity = 1.00
                            }
                        }
                    
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
                                withAnimation {
                                    self.isActive = true
                                }
                            }
                        }
                }
            }
            
            
        }
    }
}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
