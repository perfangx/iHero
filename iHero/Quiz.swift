//
//  Quiz.swift
//  iHero
//
//  Created by roba on 08/02/2023.
//

import SwiftUI

struct Quiz: View {
    @State var hitPoints : Int = 5
    //to select buttons
    @State var didTap:Bool = false
    var body: some View {
        NavigationView(){
        ZStack{
            //background color
            Color("bgColor")
                .ignoresSafeArea()
            
            //**** CONTENT *******
            VStack{
                // UNIT TITLE
                Text("Abnormal Sugar Levels")
                    .font(.title).fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
               
                // PROGRESS BAR
                Rectangle()
                    .frame(width: 300,height: 20)
                    .cornerRadius(20)
                    .padding(.bottom)
                // Q CONTENT
                VStack(alignment: .center){
                    //Q IMAGE
                    Rectangle()
                        .frame(width: 291,height: 241)
                    // Q TEXT
                    Text("Q: What is the purpose of chest compressions in CPR?")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 291)
                        .padding()
                    HStack{
                        
                        // **** FIRST CHOICE ****
                        Button{} label: {
                            Rectangle()
                                .frame(width: 166,height: 49)
                                .cornerRadius(8)
                                .foregroundColor(Color("secBGColor"))
                                .overlay(){
                                    Text("Keep patient awake")
                                    
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 166,height: 49)
                                    
                                }
                                .padding(.trailing, 10)
                        }
                        
                        // **** SECOND CHOICE ****
                        Button{
                            //  didTap.toggle()
                        } label: {
                            Rectangle()
                                .frame(width: 166,height: 49)
                                .cornerRadius(8)
                                .foregroundColor(Color("secBGColor"))
                            
                                .overlay(){
                                    Text("Shock the heart")
                                    
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 166,height: 49)
                                    // Add border if button is clicked
                                    //                                        .border(didTap ? Color.blue : Color.yellow)
                                    //
                                }//overlay close
                        }//button close
                        
                    }//hstack close
                    .padding(10)
                    
                    HStack{
                        //THIRD CHOICE
                        Button{} label: {
                            Rectangle()
                                .frame(width: 166,height: 49)
                                .cornerRadius(8)
                                .foregroundColor(Color("secBGColor"))
                                .overlay(){
                                    Text("Circulate Oxygen to heart")
                                    
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 166,height: 49)
                                    
                                }
                                .padding(.trailing, 10)
                        }
                        // FORTH CHOICE
                        Button{} label: {
                            Rectangle()
                                .frame(width: 166,height: 49)
                                .cornerRadius(8)
                                .foregroundColor(Color("secBGColor"))
                                .overlay(){
                                    Text("Circulate Oxygen to brain")
                                    
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 166,height: 49)
                                }//overlay close
                        }//button close
                        
                    }//hstack close
                    
                    Spacer()
                    Button{
                       
                    }label: {
                       
                            Text("Check")
                                .frame(width:281 , height:41 )
                                .foregroundColor(.white)
                                .background(Color("primaryColor"))
                                .cornerRadius(8)
                                .fontWeight(.semibold)
                                .padding()
                            
                    }
                }
               
                Spacer()
            }
        }
       
        .navigationBarTitleDisplayMode(.inline)
            //***** TOOL BAR *****
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack{
                    //X BUTTON
                    Button{} label: {
                        Image(systemName: "xmark.circle")
                            .foregroundColor(.white)
                    }
                  
                    Spacer()
                  //HEART COUNTS
                        Image(systemName: "heart.fill")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("darkRed")/*@END_MENU_TOKEN@*/)
                        Text("\(hitPoints)")
                            .foregroundColor(.white)
                    
                }
                .padding()
            }
        }
     
            
        }
        
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
