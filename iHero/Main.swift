//
//  Main.swift
//  iHero
//
//  Created by Hajar on 2/7/23.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            HStack{
                                Button{
                                    
                                } label: {
                                    Image(systemName: "heart.fill")
                                }
                                Spacer()
                                Text("iHero").font(.largeTitle).fontWeight(.bold)
                                Spacer()
                                Image(systemName: "heart.fill")
                                
                            }
                            .padding()
                        }
                    }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
