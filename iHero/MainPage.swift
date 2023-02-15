//
//  Main.swift
//  iHero
//
//  Created by Hajar on 2/7/23.
//

import SwiftUI

struct Main: View {
    
    @State var hitPoints : Int = 3
    
    @ObservedObject var gameVM : GameManagerVM
    
    var body: some View {
        NavigationView {
            ZStack{
                Color("bgColor")
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        ForEach(0..<gameVM.theGame.count){ ii in
                            div(theDivTopic: gameVM.theGame[ii].topic, theNumOfLevels: gameVM.theGame[ii].levels.count, theColor: gameVM.theGame[ii].color)
                            
                        }
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            HStack{
                                Button{
                                    
                                } label: {
                                    Image(systemName: "book")
                                        .foregroundColor(.white)
                                }
                                Spacer()
                                Text("iHero").font(.largeTitle).fontWeight(.bold)
                                    .foregroundColor(.white)
                                Spacer()
                                HStack{
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("darkRed")/*@END_MENU_TOKEN@*/)
                                    Text("\(hitPoints)")
                                        .foregroundColor(.white)
                                }
                                
                            }
                            .padding()
                        }
                        
                    }
                }
                .toolbarBackground(Color("bgColor"),for: .navigationBar)
            }
        }
    }
    
}


//MARK: each topic & levels
struct div : View{
    
    @State var theDivTopic : String
    @State var theNumOfLevels : Int
    @State var theColor : String
    
    var body: some View{
        VStack{
            Text(theDivTopic)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, maxHeight: 55,alignment: .leading)
                .padding(10)
                .background(Color("secBGColor"))
            level(count: theNumOfLevels, levelColor: theColor)
            
        }
    }
}




//MARK: levels content and circles
struct level :View{
    
    @State var count : Int
    @State var levelColor : String
    
    var body: some View {
        VStack{
            ForEach(1..<count+1, id: \.self){ i in
                if isEven(myInt: i){
                    Text("\(i)")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .background(
                            NavigationLink(destination:
                                            QuizPage(gameManagerVM: GameManagerVM())
                                           , label: {
                                               Circle()
                                                   .fill(Color(levelColor))
                                                   .frame(width: 100, height: 55)
                                                   .overlay(
                                                    Circle()
                                                        .fill(Color(.black))
                                                        .opacity(0)
                                                   )
                                               
                                           }))
                        .padding(.leading, 60)
                    if(i != count){
                        Image(levelColor+"Line")
                            .padding(4)
                    }
                    
                } else if !isEven(myInt: i) {
                    Text("\(i)")
                        .fontWeight(.bold)
                        .foregroundColor( .white )
                        .background(
                            NavigationLink(destination:
                                QuizPage(gameManagerVM: GameManagerVM())
                               , label: {
                                   Circle()
                                       .fill(Color(levelColor))
                                       .frame(width: 100, height: 55)
                                       .overlay(
                                        Circle()
                                            .fill(Color(.black))
                                            .opacity(0)
                                       )
                                           }))
                        .padding(.trailing, 60)
                    if(i != count){
                        Image(levelColor+"Line")
                            .padding(4)
                            .rotation3DEffect(.degrees(180), axis: (x: -10, y: 0, z: 0))
                            .rotationEffect(.radians(.pi))
                    }
                    
                    
                }
            }
            
        }
        .padding(.top, 30)
        .padding(.bottom, 30)
    }
}




func isEven(myInt: Int) -> Bool {
    if myInt % 2 == 0 {
        return true
    } else {
        return false
    }
}




struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main( gameVM: GameManagerVM())
    }
}

