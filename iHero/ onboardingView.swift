//
//   onboardingView.swift
//  iHero
//
//  Created by Raghad alasmari on 18/07/1444 AH.
//

import SwiftUI


enum OnbordingType: CaseIterable {
    case Learning
    case Reference
    case Levels
    case Points
    
    var image: String {
        switch self {
        case .Learning:
            return "Learning"
        case .Reference:
            return "Reference"
        case .Levels:
            return "Levels"
        case .Points:
            return "Points"
        }
    }
    
    var localizedString: String {
        switch self {
        case .Learning:
            return NSLocalizedString("Fun Learning" , comment: "")
        case .Reference:
            return NSLocalizedString("Reference " , comment: "")
        case .Levels:
            return NSLocalizedString("Levels" , comment: "")
        case .Points:
            return NSLocalizedString("Hit Points" , comment: "")
    
        }
    }
    
    var description: String {
        switch self {
        case .Learning:
            return NSLocalizedString("Play a game of questions & answers to examine and expand your first aid knowledge " , comment: "")
                
        case .Reference:
            return NSLocalizedString("Get a comprehensive first aid documentation to refer to when needed" , comment: "")
        case .Levels:
            return NSLocalizedString("Start from any topic you want, try to get all answers correct, and win your star" , comment: "")
        case .Points:
            return NSLocalizedString("Think before answering and try not to consume all 5 attempts " , comment: "")
                
        }
    }  
       
}


struct OnbordingView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false
    @State var selectedOnboardingType: OnbordingType = .Learning
    
    var body: some View {
        ZStack {
            
            VStack {
                TabView(selection: $selectedOnboardingType) {
                    
                    ForEach(OnbordingType.allCases, id: \.localizedString) { onbording in
                        SingleOnbordingView(onbordingType: onbording)
                            .tag(onbording)
                            .onChange(of: selectedOnboardingType, perform: { newValue in
                                selectedOnboardingType = newValue
                            })
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
             
//                if selectedOnboardingType != .Points {
//                    skipButton
//                }
            }.padding(.bottom, 50)
                .background(Color("background"))
        }
        .ignoresSafeArea()
        .onAppear {
            setupAppearance()
        }
    }
}

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}

extension OnbordingView {
    var skipButton: some View {
        Button {
            withAnimation(.spring()) {
                isUserOnboarded = true
            }
        } label: {
            Text("skip")
            .padding()
        }
        .padding(.top)
        .padding(.trailing)
        .frame(maxWidth: .infinity, alignment: .trailing)
        .frame(maxHeight: .infinity, alignment: .top)
        .foregroundColor(.white)
    }
}
    
extension OnbordingView {
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor =
        colorScheme == .dark ? .white : .black
        UIPageControl.appearance().pageIndicatorTintColor = colorScheme == .dark ? UIColor.white.withAlphaComponent(0.2) : UIColor.black.withAlphaComponent(0.2)
    }
    
}
