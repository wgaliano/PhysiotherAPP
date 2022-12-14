//
//  TodayView.swift
//  NC2-Physio
//
//  Created by Walter Galiano on 12/12/22.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        
        NavigationStack {
            
            //            List {
            //               Text("11:00 - 12:00\nViviana Pipola\nTECARTERAPIA")
            //                Text("12:00 - 13:00\nAndrea Di Donato\nPRESSOTERAPIA")
            //                Text("11:00 - 12:00\nRossella Bianco\nCRIOTERAPIA")
            //            }
            //            .navigationTitle("Today")
            //
            
            VStack {
                
                ZStack {

                    Rectangle()
                        .frame(width: 350, height: 130)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                       // .shadow(radius: 5)
                        .shadow(color: .init(uiColor: .link), radius: 1)
                    
                    VStack {
                        HStack {
                            Text ("Viviana Pipola")
                                .fontWeight(.heavy)
                                .offset(y:85)
                                .padding(.trailing,180)
                                .padding(.bottom,80)
                                .offset(y:-60)
                            
                        }
                        Text("8:00-9:00")
                            .fontWeight(.semibold)
                            .padding(.trailing, -30)
                            .offset(x:-120)
                            .offset(y:-42)
                        Text("PRESSOTERAPIA")
                            .offset(x:-80)
                            .offset(y:-25)
                            .fontWeight(.bold)
                        
                    }
                    Rectangle()
                        .frame(width: 3, height: 128)
                        .cornerRadius(10)
                        .padding(.trailing,330)
                        .foregroundColor(Color(red: 62/255, green: 132/255, blue: 220/255))
                    Rectangle()
                        .frame(width: 3, height: 120)
                        .cornerRadius(10)
                        .padding(.trailing,340)
                        .foregroundColor(Color(red: 234/255, green: 247/255, blue: 255/255))
                    
                }
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 130)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        //.shadow(radius: 5)
                        .shadow(color: .init(uiColor: .link), radius: 1)
                    
                    VStack {
                        HStack {
                            Text ("Rosa Gioffredo")
                                .fontWeight(.heavy)
                                .offset(y:85)
                                .padding(.trailing,180)
                                .padding(.bottom,80)
                                .offset(y:-60)
                            
                        }
                        Text("10:00-11:00")
                            .fontWeight(.semibold)
                            .padding(.trailing, -40)
                            .offset(x:-120)
                            .offset(y:-42)
                        Text("CRIOTERAPIA")
                            .offset(x:-90)
                            .offset(y:-25)
                            .fontWeight(.bold)
                        
                    }
                    Rectangle()
                        .frame(width: 3, height: 128)
                        .cornerRadius(10)
                        .padding(.trailing,330)
                        .foregroundColor(Color(red: 62/255, green: 132/255, blue: 220/255))

                    
                    Rectangle()
                        .frame(width: 3, height: 120)
                        .cornerRadius(10)
                        .padding(.trailing,340)
                        .foregroundColor(Color(red: 234/255, green: 247/255, blue: 255/255))
                }
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 130)
                        .cornerRadius(10)
                        .foregroundColor(Color(hue: 0.54, saturation: 0.0, brightness: 1.0))
                        //.shadow(radius: 5)
                        .shadow(color: .init(uiColor: .link), radius: 1)
                    
                    VStack {
                        HStack {
                            Text ("Angelo Lepore")
                                .fontWeight(.heavy)
                                .offset(y:85)
                                .padding(.trailing,180)
                                .padding(.bottom,80)
                                .offset(y:-60)
                            
                        }
                        Text("12:00-13:00")
                            .fontWeight(.semibold)
                            .padding(.trailing, -40)
                            .offset(x:-120)
                            .offset(y:-42)
                        Text("TECARTERAPIA")
                            .offset(x:-85)
                            .offset(y:-25)
                            .fontWeight(.bold)
                        
                    }
                    Rectangle()
                        .frame(width: 3, height: 128)
                        .cornerRadius(10)
                        .padding(.trailing,330)
                        .foregroundColor(Color(red: 62/255, green: 132/255, blue: 220/255))
                    Rectangle()
                        .frame(width: 3, height: 120)
                        .cornerRadius(10)
                        .padding(.trailing,340)
                        .foregroundColor(Color(red: 234/255, green: 247/255, blue: 255/255))
                }
                .navigationTitle("Today")
            }

            .offset(y:20)
            
            //.accentColor(.blue)
         
         
        
//            //.navigationBarTitleDisplayMode(Color.blue)
//            .accentColor(Color("ciao"))
        Spacer()
        }
    }
    struct TodayView_Previews: PreviewProvider {
        static var previews: some View {
            TodayView()
        }
    }
    
}
