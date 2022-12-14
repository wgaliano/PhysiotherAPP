//
//  PatientsView.swift
//  NC2-Physio
//
//  Created by Viviana Pipola on 12/12/22.
//

import SwiftUI

struct PatientsView: View {
    @StateObject var vm = CoreDataViewModel()
    @State private var showingSheet = false
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
//                    ForEach(vm.patients.sorted(by: { patient1, patient2 in
//                        return patient1.surname! < patient2.surname!
//                    }))
                    ForEach(searchResults.sorted(by: { patient1, patient2 in
                        return patient1.surname! < patient2.surname!
                    }), id: \.self) { patient in
                        NavigationLink {
                            PatientDetailView(patient: patient, vm: vm)
                        } label: {
                            HStack(spacing: 0) {
                                Text(patient.surname ?? "no surname")
                                    .bold()
                                Text(" ")
                                Text(patient.name ?? "no name")
                            }
                        }
                    }
                    .onDelete(perform: vm.deletePatient)
                }
                .searchable(text: $searchText, prompt: "Search patient")
            }
            .navigationTitle("Patients")
            .navigationBarItems(trailing: Button {
                showingSheet.toggle()
            } label: {
                Image(systemName: "plus")
            }
            .sheet(isPresented: $showingSheet) {
                AddPatientView(vm: vm)
            })
        }
    }
    
    var searchResults: [PatientEntity] {
        if searchText.isEmpty {
            return vm.patients
        } else {
            return vm.patients.filter({$0.surname!.contains(searchText)})
        }
    }
}

struct PatientsView_Previews: PreviewProvider {
    static var previews: some View {
        PatientsView()
    }
}
