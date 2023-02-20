
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
                                                Button{
                                                  
                                                } label: {
                                                    NavigationLink(destination:
                                                                    Main(gameVM: GameManagerVM())
                                                                   , label: { Image(systemName: "chevron.backward")
                                                        .foregroundColor(.white)})
                                                   
                                                }
                                                
                                            }
                                        }
                    
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .accentColor(.white)
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
                              case "First Aid Kit":
                                  FirstAidKit()
                              case "Choking":
                                  Choking()
                              case "Burns":
                                  Burns()
                              case "Diabetes":
                                  Abnormal_Sugar_Level()
                              case "Stroke":
                                  Stroke()
                              case"Nose Bleeds":
                                  NoseBleeds()
                              case "CPR":
                                  CPR()
                              default:
                                  Text("No information available.")
                              }
            }
            .navigationBarTitle(titles)
            .accentColor(.white)
        }
    }
}

//MARK: this struct for Other topics section.
struct OtherDetailView: View {
    let images: String
    let titles: String
    
    var body: some View {
        ZStack{
            Color("bgColor")
                .ignoresSafeArea()
            
            VStack {
                switch titles {
                case "Acknowledgment" :
                    Acknowledgment()
                case "SOS Numbers":
                    SOSNumbers()
                    
                default:
                    Text("No information available.")
                }
            
                    //                Image(images)
                    //                    .resizable()
                    //                    .aspectRatio(contentMode: .fit)
                    //
                    //                Text(titles)
                    //                    .font(.largeTitle)
                    //                    .fontWeight(.bold)
                    //                    .padding(.top, 20)
                
            }
            .navigationBarTitle(titles)
            .accentColor(.white)
        }
    }
}



struct Bleeding: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading , spacing: 4) {
                Group{
                    Text("First aid procedure for  external bleeding:")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    Text("Symptoms and signs , Not all may be present:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                    Text("1.a wound with, or without, an embedded foreign object\n2.pain from skin surface wounds\n3.bruising or discolouration of the skin\n4.loss of normal function in the injured area\n5.pale, cold,sweaty skin")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                    Text("The procedure:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                    Text("1.Apply direct pressure to the bleeding wound:")
                        .foregroundColor(.white)
                        .font(.system(size: 18,weight: .bold))
                    Text("•Apply firm pressure over the wound. Use a sterile or clean bulky pad and apply it firmly with hand pressure. Apply a bandage to keep the dressing in place.\n•If bleeding is severe, DO NOT waste time looking for suitable padding, but be prepared to use the patient’s hand or your hand to hold the wound together if the patient is unable to do this unaided.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                    // .multilineTextAlignment(.center)
                    Text("2.Raise the injured area:")
                        .foregroundColor(.white)
                        .font(.system(size: 18,weight: .bold))
                    Text("•If the wound is on a limb, raise it in a supported position to reduce blood flow to the injured area.\n•If an arm is injured, you could apply an arm sling or elevation sling.\n•Try to avoid any direct contact with the patient’s blood or other body fluids. Use disposable gloves if possible. If gloves are not available, place your hands inside a plastic bag.\n•If there has been any contact with blood or any other body fluids, wash your hands or any blood splashed on the skin thoroughly with soap and water as soon as possible after the incident.\n•If you are concerned about a possible risk of infection, obtain advice from your doctor as soon as possible.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                }
                Group{
                    Text("3.If a foreign body is embedded in the wound:")
                        .foregroundColor(.white)
                        .font(.system(size: 18,weight: .bold))
                    Text("•DO NOT remove it but apply padding on either side of the object and build it up to avoid pressure on the foreign body.\n•Hold the padding firmly in place with a roller bandage or folded triangular bandage applied in a criss-cross method to avoid pressure on the object.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                    Text("4.Keep the patient at total rest:")
                        .foregroundColor(.white)
                        .font(.system(size: 18,weight: .bold))
                    Text("•Even if the injury involves the arm or upper part of the body, the patient should rest in a position of greatest comfort for at least 10 minutes to help control the bleeding.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                    Text("5.Seek medical assistance:")
                        .foregroundColor(.white)
                        .font(.system(size: 18,weight: .bold))
                    Text("•If the wound appears to be minor and the patient is able to travel by car, arrange an urgent appointment with a local doctor to assess and treat the injury.\n•If the injury is severe or the patient is very unwell – call 997 or 911 for an ambulance as soon as possible.\n•While waiting for an ambulance to arrive, observe the patient closely for any change in condition.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                    Text("6.If blood leaks through the pressure pad and bandage:")
                        .foregroundColor(.white)
                        .font(.system(size: 18,weight: .bold))
                    Text("•Apply a second pad over the first. Use a tea towel or similar bulky fabric and apply maximum pressure to the area.\n•For major uncontrolled bleeding quickly remove the blood-soaked pad and bandage and replace with a fresh bulky pad and bandage. The continuing bleeding may be due to the pad slipping out of position when the first bandage was applied.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                }
            }.padding(.leading,20)
        }.toolbarBackground(Color("bgColor"),for: .navigationBar)
    }
}

struct FirstAidKit: View {
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading , spacing: 4) {
                Text("What should I keep in my first aid kit?:")
                    .font(.system(size: 24,weight: .bold))
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                Text("It's important to have a well-stocked first aid kit in your home so you can deal with minor accidents and injuries.\nYour first aid kit should be locked and kept in a cool, dry place out of the reach of children.\nMany people also keep a small first aid kit in their car for emergencies.\nA basic first aid kit may contain:")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .padding(.leading,10)
                Text("•plasters in a variety of different sizes and shapes.\n•small, medium and large sterile gauze dressings.\n•at least 2 sterile eye dressings.\n•triangular bandages,crêpe rolled bandages.\n•safety pins.\n•disposable sterile gloves.\n•tweezers,scissors.\n•alcohol-free cleansing wipes.\n•sticky tape.\n•thermometer (preferably digital).\n•skin rash cream, such as hydrocortisone or calendula.\n•cream or spray to relieve insect bites and stings.\n•antiseptic cream.\n•painkillers such as paracetamol (or infant paracetamol for children), aspirin (not to be given to children under 16), or ibuprofen.\n•antihistamine cream or tablets.\n•distilled water for cleaning wounds.\n•eye wash and eye bath.")
                    .foregroundColor(.white)
                    .font(.system(size:18))
                    .padding(.leading,20)
                Text("It may also be useful to keep a basic first aid manual or instruction booklet with your first aid kit.\nMedicines should be checked regularly to make sure they're within their use-by dates.")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .padding(.leading,10)
                
                
            }.padding(.leading,20)
        }.toolbarBackground(Color("bgColor"),for: .navigationBar)
    }
}

struct Choking: View {
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading , spacing: 4) {
                Text("First aid procedure for  choking:")
                    .font(.system(size: 24,weight: .bold))
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                Text("Introduction:")
                    .foregroundColor(.white)
                    .font(.system(size: 20,weight: .bold))
                Text("Asphyxiation occurs when a foreign object gets stuck in the throat or trachea so that it impedes the passage of air, often due to food causing in adults, and swallows small objects to young children.")
                    .foregroundColor(.white)
                    .font(.system(size:18))
                Text("Symptoms:")
                    .foregroundColor(.white)
                    .font(.system(size: 20,weight: .bold))
                Text("•Holding the throat with the hands.\n•Inability to speak.\n•Difficulty breathing or breathing accompanied by sound.\n•Whistling when trying to breathe.\n•Weak or strong cough.\n•Skin color and lips turned blue.\n•Loss of consciousness.")
                    .foregroundColor(.white)
                    .font(.system(size:18))
                Text("The procedure:")
                    .foregroundColor(.white)
                    .font(.system(size: 20,weight: .bold))
                Text("•If a person is able to breathe strongly, they have to keep coughing.\n•If a person is asphyxiated and unable to speak, cry or laugh hard, the following must be done:")
                    .foregroundColor(.white)
                    .font(.system(size:18))
                Text("1.Stand behind the injured person.\n2.Put one foot in front of the other a little for balance.\n3.Wrap arms around an infected person's waist.\n4.Tilt the infected person a little further forward.\n5.Make a fist with the other hand and then place it over the navel area.\n6.Hold the fist with the other hand and then put a hard pressure on the abdomen quickly upwards.\n7.Do an average of 6 to 10 abdominal pressures until the body is stuck.\n8.If the infected person has lost consciousness, CPR with chest compressions and rescue breaths.")
                    .foregroundColor(.white)
                    .font(.system(size:18))
                    .padding(.leading,10)
                
                
            }.padding(.leading,20)
        }.toolbarBackground(Color("bgColor"),for: .navigationBar)
    }
}

struct Burns: View {
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading , spacing: 4) {
                Group{
                    Text("First aid procedure for  Burns:")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    Text("Burns:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                    Text("It is tissue damage caused by skin exposure to fire, prolonged exposure to sunlight or other radiation, as well as contact with incendiary surfaces, or chemicals.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                    
                    Text("First degree burns (light):")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                    Text("Ambulatory procedures:")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding(.leading,10)
                    
                    
                    Text("•Cooling the burn to help calm the pain by placing the burned area underneath the running water of the tap and moderate cold for 10 to 15 minutes to relieve the pain.\n•Remove accessories (such as: rings, watches or belts) if any or remove shoes or any clothes gently and quickly, before the area enlarges.\n•Cover the burning area using wet bandage or cool clean cloth, to reduce the risk of infection.\n•Take the painkiller if necessary so as to relieve the pain.\n•Immediately seek help if the burns are severe and extend wide areas, or if you notice signs of infection such as increased pain, redness and swelling.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    Text("Wrong behaviors:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                    Text("•Don’t try to touch the bubbles from burning.\n•Do not apply any ointments or use butter or toothpaste and other treatments on burning.\n•Do not use snow directly on the burned area.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,10)
                }
                Group{
                    Text("Second degree burns :")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                    Text("Ambulatory procedures:")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding(.leading,10)
                    
                    
                    Text("•Protect the injured person from damage.\n•Remove jewelry, belts and others, especially around burned areas for example neck.\n•Take the painkiller if necessary so as to relieve the pain.\n•Cover the burning area using wet bandage or cool clean cloth.\n•Cover open bubbles with dry and sterile bandage.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    Text("Wrong behaviors:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                    Text("•Remove burnt clothes stuck on the skin.\n•Cover the burn with adhesive bandage.\n•Place large burned areas inside cold water to avoid trauma to the injured.\n•Use ice directly on the burned area.\n•Apply any ointments or use butter or toothpaste, or other treatments to burn.\n•Touch or open the bubbles resulting from burning.\n•Lay thin cotton on the affected area which may provoke skin.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,10)
                }
                
                Group{
                    Text("Third degree burns :")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                    Text("It is one of the most serious burns where all layers of the skin are included down to fat, and muscles may be affected.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,10)
                    Text("Ambulatory procedures:")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding(.leading,10)
                    
                    
                    Text("•Contact the Red Crescent immediately.\n•Make sure the vital signs of the infected like breathing.\n•Protect the injured person from damage by removing them from flammable materials, smoke or heat sources.\n•Raise the affected area above heart level if possible.\n•Cover the burning area using wet bandage or cool clean cloth.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    Text("Wrong behaviors:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                    Text("•Remove burnt clothes stuck on the skin.\n•Placing large burned areas inside cold water to avoid trauma (sudden reduction in body temperature).\n•Cover the burn with adhesive bandage.\n•Apply any ointments or use butter or toothpaste, or other treatments to burn.\n•Lay thin cotton on the affected area which may provoke the affected area.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,10)
                }
            }.padding(.leading,20)
        }.toolbarBackground(Color("bgColor"),for: .navigationBar)
    }
}

struct Abnormal_Sugar_Level: View {
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading , spacing: 4) {
                Group{
                    Text("First aid procedure for  Abnormal Sugar level:")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    Text("Diabetes is a chronic disease that occurs either when the pancreas does not produce enough insulin or when the body cannot effectively use the insulin it produces. Insulin is a hormone that regulates blood glucose. Hyperglycaemia, also called raised blood glucose or raised blood sugar.\n•Glucose: The carbohydrates and sugars in what you eat and drink turns into glucose (sugar) in the stomach and digestive system. Glucose can then enter the bloodstream.\n•Insulin: Insulin is a hormone made in the pancreas that helps the body’s cells take up glucose from blood and lower blood sugar levels.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                    Text("Types of diabetes:")
                        .font(.system(size: 22,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    Text("1.Type 1 diabetes:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                        .padding(.leading,10)
                    
                    
                    Text("This type of diabetes is also referred to as insulin-dependent diabetes. People with Type 1 diabetes must take insulin or other medications daily. This makes up for the insulin not being produced by the body.\nType 1 diabetes develops when the body’s immune system attacks and destroys cells in the pancreas that make insulin.\nOnce these cells are destroyed, the pancreas produces little or no insulin, so glucose stays in the blood. When there’s too much glucose in the blood, especially for prolonged periods, the organ systems in the body suffer long-term damage.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                
                }
                Group{
                    Text("1.Type 2 diabetes:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight: .bold))
                        .padding(.leading,10)
                   
                    Text("Type 2 diabetes is the most common form of diabetes. Type 2 diabetes has historically been diagnosed primarily in adults. But adolescents and young adults are developing Type 2 diabetes at an alarming rate because of family history and higher rates of obesity and physical inactivity — risk factors for Type 2 diabetes, In Type 2 diabetes, glucose builds up in the blood instead of going into cells\nThis type of diabetes can occur when:\n•The body develops “insulin resistance” and can’t efficiently use the insulin it makes.\n•The pancreas gradually loses its capacity to produce insulin.\nType 2 diabetes may be delayed or controlled with diet and exercise.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                }
                
                Group{
                    Text("Track Levels:")
                        .font(.system(size: 22,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    Text("Health care professionals can take blood glucose readings and provide recommendations. If you’re diagnosed with Type 2 diabetes, you will need to monitor your blood sugar level regularly.\nKnow Diabetes by Heart can help you manage Type 2 diabetes.\nFasting Blood Glucose Level, Diagnosis and What It Means:")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding(.leading,10)
                    Text("•Lower than 100 mg/dl – Normal – Healthy range.\n•100 to 125 mg/dl – Prediabetes (Impaired Fasting Glucose) – At increased risk of developing diabetes.\n•126 mg/dl or higher– Diabetes Mellitus (Type 2 diabetes) – At increased risk of heart disease or stroke.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    
                    Text("Tips for Success:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight:.bold))
                        .padding(.leading,10)
                    
                    Text("•Eat Smart:\nEat a healthy diet of vegetables, fruits, whole grains, beans, legumes, nuts, plant-based proteins, lean animal proteins like fish and seafood. Limit sugary foods and drinks, red or processed meats, salty foods, refined carbohydrates and highly processed foods.\n•Move More:\nBeing physically active can lower your risk of developing diabetes and help you manage the disease if you already have it.\n•Manage Weight:\nStay at a healthy weight to help prevent, delay or manage diabetes.\n•No Nicotine:\nSmoking, vaping, exposure to secondhand smoke or using tobacco can increase your risk of heart disease, stroke, many cancers and other chronic diseases. It may also make prediabetes and diabetes harder to manage.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                }
                Group{
                    Text("First Aid for Low Sugar Attack:")
                        .font(.system(size: 22,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    Text("If the patient is unconscious:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight:.bold))
                        .padding(.leading,10)
                    
                    Text("Follow the rule of 15 15 15\n1.15 grams of fast-absorbing sugars such as half a cup of juice, a spoon of honey or 3 spoons of sugar dissolved in water.\n2. After 15 minutes, blood sugar is measured if the result is higher or equal to 70, the infected person is given 15 grams of carbohydrates.\n3. If blood sugar is less than 70,  redo one step, until the blood sugar rises to 70 or more, and then the injured person is given a snack.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    
                    Text("If the patient is conscious:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight:.bold))
                        .padding(.leading,10)
                    
                    Text("The patient is injected with glucagon injection after 15 to 20 minutes. Blood sugar will rise and a snack will be taken. If the injection is not available, the patient should be hospitalized as soon as possible.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                }
                Group{
                    Text("First Aid for High Sugar Attack:")
                        .font(.system(size: 22,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    Text("Symptoms:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight:.bold))
                        .padding(.leading,10)
                    
                    Text("1.Thirst.\n2.The patient feels dry in the throat.\n3.A low heart rate of less than 100 per minute.\n4.Feeling tired.\n5.Unaware.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    
                    Text("Procedures:")
                        .foregroundColor(.white)
                        .font(.system(size: 20,weight:.bold))
                        .padding(.leading,10)
                    
                    Text("1.Drink water in quantity\n2.Take the medicine.\n3.Go to the hospital.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                }
            }.padding(.leading,20)
        }.toolbarBackground(Color("bgColor"),for: .navigationBar)
    }
}

struct Stroke: View {
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading , spacing: 4) {
                Group{
                    Text("First aid procedure for Stroke:")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    Text("When a person is having a stroke, every second counts. And what you do in those critical moments can potentially help save someone’s life.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                    Text("Presuders to Do When Someone Is Having a Stroke:")
                        .foregroundColor(.white)
                        .font(.system(size: 22,weight: .bold))
                    Text("1.Call 911 or 997 immediately:")
                        .foregroundColor(.white)
                        .font(.system(size:20))
                        .padding(.leading,10)
                    Text("If you do observe any symptoms, you should call 911 immediately,Not sure what the symptoms of a stroke are? Give someone you think is having a stroke this FAST test from the National Stroke Association:\n•F:Face , Ask them to smile.Does one side look like drooping ?\n•A:Arm , Instruct them to raise both arms.Dose one arm drift downward?\n•S:Speech , Ask them to say something .Dose it sound strange?\n•T:Time if you observe symptoms call the ambulance immediately.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    Text("2.Note the time you first see symptoms.\n3.Perform CPR, if necessary.\n4.Do not let that person go to sleep.\n5.Do not give them medication, food, or drinks:")
                        .foregroundColor(.white)
                        .font(.system(size:20))
                        .padding(.leading,10)
                    Text("There are two kinds of strokes:\n•Hemorrhagic stroke, caused by a ruptured blood vessel leading to brain bleeds\n•Ischemic stroke, caused by a clot leading to blockage in a blood vessel.\n80 percent of strokes are ischemic ones, but if you’re in that 20 percent and your stroke was caused by a ruptured blood vessel in the head, you don’t want to take aspirin,And you can’t tell which one it is until you get to the emergency room and you get a CAT scan.\nAspirin actually might hurt the patient more, and cause more bleeding if in fact they are having a hemorrhagic stroke, because aspirin is a blood thinner.\nTo be safe, don’t give someone who has stroke symptoms any medication.\nYou also shouldn’t give them food or drinks before the ambulance comes.\nSometimes, a stroke affects their ability to swallow. This could ultimately cause more harm to the person if they choke and develop infections or trouble breathing.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    Text("6.Do not drive yourself to the emergency room.")
                        .foregroundColor(.white)
                        .font(.system(size:20))
                        .padding(.leading,10)
                }
               
            }.padding(.leading,20)
        }.toolbarBackground(Color("bgColor"),for: .navigationBar)
    }
}

struct NoseBleeds: View {
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading , spacing: 4) {
                Group{
                    Text("First aid procedure for Nose Bleeds:")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    Text("Introduction:")
                        .foregroundColor(.white)
                        .font(.system(size: 22,weight: .bold))
                    Text("Nosebleeds are common injuries occurring among people, often caused by dry air. Nasal bleeding varies from simple, not serious, and depends on its own to severe, requiring immediate medical attention.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                    Text("Types of nose bleeds:")
                        .foregroundColor(.white)
                        .font(.system(size: 22,weight: .bold))
                    Text("1.Anterior nose bleeding:")
                        .foregroundColor(.white)
                        .font(.system(size:20))
                        .padding(.leading,10)
                    Text("Which is the most common, originates towards the front of the nose, causes blood flow through the nostrils, and this type is usually not dangerous.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                }
                Group{
                    Text("2.Back nose bleeding:")
                        .foregroundColor(.white)
                        .font(.system(size:20))
                        .padding(.leading,10)
                    Text("It comes from the back of the nose passage, near the throat, which is less common than anterior nose bleeding, but it can be dangerous, and can cause a lot of blood loss.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    
                    Text("Causes of nasal bleeding:")
                        .foregroundColor(.white)
                        .font(.system(size: 22,weight: .bold))
                    Text("•The inside of the nose contains many blood vessels close to the surface of the nose; So it's easy to get it.\n•Most nosebleeds are caused by cold, or dry air.\n•Nasal allergies, or cold, can cause nasal inflammation.\n•Injury to the face, or nose directly, such as: fall, or bicycle accident.\n•Nasal bleeding is rarely caused by a serious problem, such as: bleeding disorders, vascular abnormalities, or a nasal tumor.\n•Drugs, for example, when taking drugs to prevent thrombosis, such as: aspirin and warfarin, one is more likely to develop nasal bleeding, and cannot be easily stopped.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    Text("Nosebleeds First Aid:")
                        .foregroundColor(.white)
                        .font(.system(size: 22,weight: .bold))
                    Text("•Slightly bending forward while sitting or standing, avoiding lying down or head tilted back, as this will cause blood swallow and vomiting.\n•Holding the nose from the soft part (not the bone) in both ways, while avoiding pressure on only one side, even if the bleeding is on only one side.\n•Squeeze your nose closed for at least 5 minutes (for children) or 10 to 15 minutes (for adults). Do not release the pressure every so often to check whether the bleeding has stopped, except after the specified time has passed.\n•Cold compress or ice pack can be applied to the bridge of your nose. This may help the blood vessels constrict and slow the bleeding.\n•If you follow the steps outlined above, and your nose continues to bleed, repeat all the steps once more. Apply pressure for a total of at least 30 minutes. If you continue to bleed, seek emergency medical care")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    
                }
               
            }.padding(.leading,20)
        }.toolbarBackground(Color("bgColor"),for: .navigationBar)
    }
}

struct CPR: View {
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading , spacing: 4) {
                Group{
                    Text("First aid procedure for CPR:")
                        .font(.system(size: 24,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    Text("Every human being is at risk of having a heart stop for some reason.The possibility of saving a person whose heart stopped depends on the first person who witnessed what happened. Every minute you pass the patient without ambulance reduces the chances of the patient surviving , so time here means the difference between life and death.\nThe human brain and heart cannot withstand the interruption of blood and oxygen for more than (6) six minutes, as the cells of the brain and heart begin to die after the passage of these six minutes.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,10)
                    Text("What is CPR?:")
                        .font(.system(size: 22,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    Text("CPR is a double process in which the medic resuscitates the lung and heart. The resuscitation of the lung is done through the delivery of air and oxygen to it through ventilation, and the resuscitation of the heart is done by manual pressure on the affected person heart area (in the area between the thoracic bone and the spine) so that blood is pumped to the vital parts of the affected person body, especially the brain.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,10)
                }
                Group{
                    Text("What causes CPR?")
                        .font(.system(size: 22,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)

                    Text("1.Diseases,heart problems,heart attack.\n2.Diseases,respiratory problems.\n3.Electric shock.\n4.Poisoning.\n5.Drowning,choking.\n6.Cardiac arrest.\n7.Acute bleeding,or severe trauma.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,10)
                    
                    Text("First aid procedure for CPR")
                        .font(.system(size: 22,weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)

                    Text("1.Make sure you are in a safe position if you approach the patient, beware that you yourself become infected.\n2.Try to see if the patient is able to respond or not, and try to wake him up by shrugging and calling him loud and close to his ears.\n3.Ask for help from those around you or from passage. Ask for help even if you don't see anyone near you. If someone responds to a request for help, I ask them to wait near you until you assess the patient condition.\n4.Put the patient on the ground or hard surface and remove any pillows under his head. Be careful if you are dealing with an injured person who has lost consciousness after hitting something.\n5.Make sure the respiratory stream is open, use a head tilt method and chin lift, follow the following steps:")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,10)
                    
                    

                    Text("1.Place two fingers from one of your hands under the injured person's chin and lift his head upwards.\n2.Put your other palm on the injured forehead and press down.\n3.Look inside the patient to make sure his mouth is free of any foreign object, artificial teeth.\n4.If the patient suffers from trauma or bruising, you should avoid moving his neck and try to open the respiratory tract by pressing the jaw.\n5.Check for 10 seconds whether or not the patient  is breathing in the following ways:")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,20)
                    Text("•Check considering the observation of the height and drop of the chest.\n•Hearing check by placing your ear in close proximity to the injured person's mouth and nose.\n•Check the sensation so that you feel the exhaled on your cheek.")
                        .foregroundColor(.white)
                        .font(.system(size:18))
                        .padding(.leading,25)

                    
                
                }
                
                
            }.padding(.leading,20)
        }.toolbarBackground(Color("bgColor"),for: .navigationBar)
    }
}

struct referencePage: View {
    let images = ["firstAidKitImage","chokingImage","bleedingImage","cbrImage","blood sugar","Burns" ,"Nosebleeds" ,"Stroke" ]
    let titles = ["First Aid Kit", "Choking", "Bleeding", "CPR", "Diabetes" , "Burns" , "Nose Bleeds", "Stroke" ]
    
    let otherImages = ["sosImage" , "acknowledgmentImage"]
    let otherTitles = ["SOS Numbers" , "Acknowledgment"]
    var body: some View {
        ImageGrid(images: images , titles: titles , otherImages: otherImages , otherTitles: otherTitles)
    }
}

struct Acknowledgment: View {
var body: some View {

        VStack(alignment: .leading , spacing: 4) {
            
            Text("Words cannot express our gratitude to Paramedic Specialist Mr.Nawaf Alsayed for his time and effort in assisting us with his knowledge and providing the best resources for the content of this app, Additionally, this App would not have been possible without the generous support from the Apple Developer academy and all the mentors for their invaluable patience and feedback.")
                .padding()
            Text("We hope this app would be a great resource to learn about first aid and help in saving lives, and remember: Play like a Hero, turn into a Hero")
                .padding()
          
        }
        .foregroundColor(.white)
    
}
}

struct SOSNumbers: View {
var body: some View {
ScrollView{

        VStack(alignment: .leading , spacing: 4) {
            Spacer()
            Text("SOS NUMBERS")
                .padding()
          Spacer()
        }
        .foregroundColor(.white)
    }
}
}



struct referencePage_Previews: PreviewProvider {
    static var previews: some View {
        referencePage()
    }
}
