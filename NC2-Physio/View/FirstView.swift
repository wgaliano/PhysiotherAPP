//
//  SwiftUIView.swift
//  NC2-Physio
//
//  Created by Rosa on 13/12/22.
//

import SwiftUI

struct FirstView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State var login = false
    @State private var ShowingLoginScreen = false
    
    var body: some View {
        ZStack{
            Color("backgroundColor")
                .ignoresSafeArea()
           
            VStack {
                Image("logo1")
                    .resizable()
                    .frame(width:300,height:270)
                    .padding(.bottom,100)
                VStack(spacing: 60){
                    
                    VStack{
                        
            //SE VOLESSI I CAMPI USERNAME E PASSWORD TAPPABILI:
                        
                        //TextField("Username :", text:$username)
                           // .padding()
                          //  .padding(.leading,1)
                            //.bold()
                           // .frame(width:295,height:40)
                            //.background(Color.blue.opacity(0.10))
                          //  .background(Color("Sfondo").opacity(0.50))
                        
                            //.shadow(radius: 30)
                          //  .cornerRadius(10)
                            //.border(.red, width: CGFloat(wrongUsername))
                        
        
                        
                        //(se volessi il contorno di username blue)
                        
                        
                       // TextField("Password :", text:$password)
                          //  .padding()
                          //  .padding(.leading,1)
                            //.bold()
                           //.frame(width:295,height:40)
                            //.background(Color("Sfondo").opacity(0.50))
                            //.background(Color.white.opacity(10))
                           // .cornerRadius(10)
                           
                          
                        
                    }
                    
                    Button {
                        login = false
                    } label: {
                        Text ("ENTER")
                    
                  // Button("LOGIN"){
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                        
                        
                    }
                }
                
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
