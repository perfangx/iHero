
import SwiftUI
struct ImageGrid: View {
    let images: [String]
    let titles: [String]
    let otherImages: [String]
    let otherTitles: [String]
    var body: some View {
        NavigationView{
            ZStack{
                Color("bgColor")
                    .ignoresSafeArea()
                
                ScrollView() {
                    LazyVGrid(columns: [GridItem(.fixed(180)) ,
                                        GridItem(.fixed(180))]){
                        VStack(spacing:30){
                            Spacer()
                            Text("First Aid")
                                .font(.system(size: 26))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.trailing,20)
                        }
                        Spacer()
                        
                        ForEach(0..<images.count) { index in
                            VStack{
                                Rectangle()
                                    .fill(Color("secBGColor"))
                                    .frame(width: 130, height: 115)
                                    .cornerRadius(10)
                                    .overlay(
                                        Image(self.images[index])
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 70, height: 70
                                                   , alignment: .center))
                                
                                Text(self.titles[index])
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding(.top, 6)
                            }
                            .padding()
                        }
                    }
                    Spacer()
                    
                    LazyVGrid(columns:[GridItem(.fixed(180)), GridItem(.fixed(180))]){
                        VStack(spacing:30){
                            Spacer()
                            Text("Other")
                                .font(.system(size: 26))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.trailing,60)
                        }
                        
                        Spacer()
                        
                        ForEach(0..<otherImages.count) { index in
                            VStack{
                                
                                Rectangle()
                                    .fill(Color("secBGColor"))
                                    .frame(width: 130, height: 115)
                                    .cornerRadius(10)
                                    .overlay(
                                        Image(self.otherImages[index])
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 70, height: 70
                                                   , alignment: .center)
                                    )
                                Text(self.otherTitles[index])
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding(.top, 10)
                                
                            }
                            .padding()
                        }
                    }
                    
                    
                }
//                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color("bgColor"))
            
            .toolbar{
                ToolbarItem(placement: .principal)
                {
                    Text("Read More")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button{}
                label:{
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                }
                    
                }
            }
            
        }
    }
}



struct referencePage: View {
    let images = ["firstAidKitImage","chokingImage","bleedingImage","cbrImage","image5","image6" ,"image6" ,"image6" ]
    let titles = ["First Aid Kit", "Choking", "Bleeding", "CBR", "Title 5" , "Title 6" , "Title 7", "Title 8" ]
    
    let otherImages = ["sosImage" , "acknowledgmentImage"]
    let otherTitles = ["SOS Numbers" , "Acknowledgment"]
    var body: some View {
        ImageGrid(images: images , titles: titles , otherImages: otherImages , otherTitles: otherTitles)
    }
}

struct referencePage_Previews: PreviewProvider {
    static var previews: some View {
        referencePage()
    }
}
