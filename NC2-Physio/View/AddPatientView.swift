//
//  AddPatientView.swift
//  NC2-Physio
//
//  Created by Walter Galiano on 12/12/22.
//

import SwiftUI
import Combine
import CoreData

struct AddPatientView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var vm = CoreDataViewModel()
    
    @State private var nameEntered = ""
    @State private var surnameEntered = ""
    @State private var ageEntered = ""
    @State private var fiscalCodeEntered = ""
    @State private var professionEntered = ""
    @State private var lifestyleEntered = ""
    @State private var weightEntered = ""
    @State private var heightEntered = ""
    @State private var allergiesEntered = ""
    @State private var sportsEntered = ""
    @State private var foodIntolerancesEntered = ""
    @State private var diseasesEntered = ""
    @State private var drugsEntered = ""
    @State private var surgeriesEntered = ""
    
    var body: some View {
        NavigationStack {
            Form {
                //name
                Section(header: Text("Name")){
                    TextField("Insert name", text: $nameEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
                
                //surname
                Section(header: Text("Surname")){
                    TextField("Insert surname", text: $surnameEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
                
                //age
                Section(header: Text("Age")){
                    TextField("Insert age", text: $ageEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
                
                //fiscalcode
                Section(header: Text("Fiscal code")){
                    TextField("Insert fiscalcode", text: $fiscalCodeEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
                
                //weight
                Section(header: Text("Weight (kg)")){
                    TextField("Insert weight", text: $weightEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
                
                //height
                Section(header: Text("Height (cm)")){
                    TextField("Insert height", text: $heightEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
                
                //profession
                Section(header: Text("Profession")){
                    TextField("Insert profession", text: $professionEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
                
                //lifestyle
                Section(header: Text("Lifestyle")){
                    TextField("Insert lifestyle", text: $lifestyleEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
                
                //allergies
                Section(header: Text("Allergies")){
                    TextField("Insert allergies", text: $allergiesEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
                
                //food intolerances
                Section(header: Text("Food intolerances")){
                    TextField("Insert food intolerances", text: $foodIntolerancesEntered, axis: .vertical)
                        .toolbar {
                            ToolbarItemGroup (placement: .keyboard) {
                                Spacer()
                            }
                        }
                }
            }
            .navigationBarItems(leading: Button("Cancel",action: {
                presentationMode.wrappedValue.dismiss()
            }))
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("New patient")
            .navigationBarItems(trailing: Button("Done",action: {
                
                vm.addPatient(name: nameEntered, surname: surnameEntered, age: Int(ageEntered) ?? 0, fiscalCode: fiscalCodeEntered, lifestyle: lifestyleEntered, profession: professionEntered, height: Int(heightEntered) ?? 0, weight: Double(weightEntered) ?? 0.0, allergies: allergiesEntered, foodIntolerances: foodIntolerancesEntered)
                
                presentationMode.wrappedValue.dismiss()
            }))
        }
    }
}

struct AddPatientView_Previews: PreviewProvider {
    static var previews: some View {
        AddPatientView()
    }
}
