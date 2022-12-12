//
//  PatientDetailView.swift
//  NC2-Physio
//
//  Created by Walter Galiano on 12/12/22.
//

import SwiftUI

struct PatientDetailView: View {
    var patient: PatientEntity
    @ObservedObject var vm = CoreDataViewModel()
    @State var showingSheet = false
    
    var body: some View {
        VStack {
            VStack(spacing: 16) {
                HStack {
                    Text("Fiscal code")
                        .bold()
                    Spacer()
                    Text(patient.fiscalCode ?? "no fiscalcode")
                }
                
                HStack {
                    Text("Age")
                        .bold()
                    Spacer()
                    Text(String(patient.age))
                }
                
                HStack {
                    Text("Weight")
                        .bold()
                    Spacer()
                    Text(String(patient.weight)+" kg")
                }
                
                HStack {
                    Text("Height")
                        .bold()
                    Spacer()
                    Text(String(patient.height)+" cm")
                }
                
                HStack {
                    Text("Profession")
                        .bold()
                    Spacer()
                    Text(patient.profession ?? "no profession")
                }
                
                HStack {
                    Text("Lifestyle")
                        .bold()
                    Spacer()
                    Text(patient.lifestyle ?? "no lifestyle")
                }
                
                HStack {
                    Text("Allergies")
                        .bold()
                    Spacer()
                    Text(patient.allergies ?? "no allergies")
                }
                
                HStack {
                    Text("Food intolerances")
                        .bold()
                    Spacer()
                    Text(patient.foodIntolerances ?? "no intolerances")
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle(patient.surname!+" "+patient.name!)
            .navigationBarItems(trailing: Button {
                showingSheet.toggle()
            } label: {
                Text("Edit")
            }
            .sheet(isPresented: $showingSheet) {
                EditPatientView()
            })
        }
    }
}
