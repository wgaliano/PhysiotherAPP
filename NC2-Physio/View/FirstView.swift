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
       NavigationStack {
            ZStack{
                Color("backgroundColor")
                    .ignoresSafeArea()
                
                VStack {
                    Image("logo1")
                        .resizable()
                        .frame(width:300,height:270)
                        .padding(.bottom,100)
                    VStack(spacing: 60){
                        
                        NavigationLink {
                            EntryView()
                        } label: {
                            Text ("ENTER")
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
    
    
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
