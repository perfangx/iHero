//
//  Main.swift
//  iHero
//
//  Created by Hajar on 2/7/23.
//

import SwiftUI

struct Main: View {
    
    @State var hitPoints : Int = 3
    
    @State var divTopic1 : String = "Abnormal Sugar Levels"
    @State var numOfLevels1 : Int = 4
    @State var color1 : String = "secondaryColor"
    @State var divTopic2 : String = "Chocking"
    @State var numOfLevels2 : Int = 3
    @State var color2 : String = "lightGreen"
    @State var divTopic3 : String = "External Bleeding"
    @State var numOfLevels3 : Int = 5
    @State var color3 : String = "darkGreen"
    
    var body: some View {
        NavigationView {
            ZStack{
                Color("bgColor")
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        div(theDivTopic: $divTopic1, theNumOfLevels: $numOfLevels1, theColor: $color1)
                        div(theDivTopic: $divTopic2, theNumOfLevels: $numOfLevels2, theColor: $color2)
                        div(theDivTopic: $divTopic3, theNumOfLevels: $numOfLevels3, theColor: $color3)
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

struct div : View{
    
    @Binding var theDivTopic : String
    @Binding var theNumOfLevels : Int
    @Binding var theColor : String
    
    var body: some View{
        VStack{
            Text(theDivTopic)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, maxHeight: 55,alignment: .leading)
                .padding(10)
                .background(Color("secBGColor"))
            level(count: $theNumOfLevels, levelColor: $theColor)
            
        }
    }
}




struct level :View{
    
    @Binding var count : Int
    @Binding var levelColor : String
    @State var isLocked : Bool = false
    
    var body: some View {
        VStack{
            ForEach(1..<count+1){ i in
                if isEven(myInt: i){
                    Text("\(i)")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .background(Button{
                            isLocked.toggle()
                        }label: {
                            Circle()
                                .fill(Color(levelColor))
                                .frame(width: 100, height: 55)
                                .overlay(
                                    Circle()
                                        .fill(Color(.black))
                                        .opacity(isLocked ? 0.5 : 0)
                                )
                        })
                        .padding(.leading, 60)
                    if(i != count){
                        Image(levelColor+"Line")
                            .padding(4)
                    }
                    
                } else if !isEven(myInt: i) {
                    Text("\(i)")
                        .fontWeight(.bold)
                        .foregroundColor( .white )
                        .background(Button{
                        }label: {
                            Circle()
                                .fill(Color(levelColor))
                                .frame(width: 100, height: 55)
//                                .overlay(
//                                    Circle()
//                                        .fill(Color(.black))
//                                        .opacity(0.5)
//                                )
                        })
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
        Main()
    }
}

