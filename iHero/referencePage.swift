
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
                            NavigationLink(destination: FirstAidDetailView( images: self.images[index],titles: self.titles[index])) {
                                
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
                                //                            Button(self.images){}
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
                                NavigationLink(destination: OtherDetailView(images: self.otherImages[index], titles: self.otherTitles[index])){
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
                        .padding(.trailing,180)
                   
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
    }
}

//MARK: this struct for the first aid topics section
struct FirstAidDetailView: View {
    let images: String
    let titles: String
    
    var body: some View {
        ZStack{
            
            Color("bgColor")
                .ignoresSafeArea()
            
            VStack {
                
                switch titles {
                              case "Bleeding":
                                  Bleeding()
                              case "FirstAidKit":
                                  FirstAidKit()
                              case "Choking":
                                  Choking()
                              default:
                                  Text("No information available.")
                              }
            }
            .navigationBarTitle(titles)
        }
    }
}

//MARK: this struct for Other topics section
struct OtherDetailView: View {
    let images: String
    let titles: String
    
    var body: some View {
        ZStack{
            Color("bgColor")
                .ignoresSafeArea()
            
            VStack {
                Image(images)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(titles)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
           
            }
            .navigationBarTitle(titles)
        }
    }
}



struct Bleeding: View {
    var body: some View {
        VStack {
            Text("Instructions for treating bleeding:")
                .font(.headline)
                .padding(.bottom, 10)
            
            Text("1. Apply pressure to the wound using a clean cloth or bandage.")
            Text("2. Elevate the injured area above the heart, if possible.")
            Text("3. If the bleeding does not stop, seek medical attention.")
        }
    }
}

struct FirstAidKit: View {
    var body: some View {
        VStack {
            Text("Instructions ")
                .font(.headline)
                .padding(.bottom, 10)
            
            Text("1. immobilize the injured area using a splint or sling.")
            Text("2. Keep the injured limb elevated above the heart.")
            Text("3. Seek medical attention immediately.")
        }
    }
}

struct Choking: View {
    var body: some View {
        VStack {
            Text("Introduction:")
                .font(.headline)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 10)
            
            Text("1. Perform the Heimlich maneuver.")
            Text("2. If the object does not dislodge, seek medical attention.")
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
