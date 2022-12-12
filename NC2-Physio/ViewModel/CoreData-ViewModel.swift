//
//  CoreData-ViewModel.swift
//  NC2-Physio
//
//  Created by Walter Galiano on 12/12/22.
//

import Foundation
import CoreData

class CoreDataViewModel: ObservableObject {
    let container: NSPersistentContainer
    @Published var patients: [PatientEntity] = []
    
    init() {
        container = NSPersistentContainer(name: "NC2_Physio")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                print("ERROR LOADING CORE DATA. \(error)")
            } else {
                print("SUCCESSFULLY LOADED CORE DATA!")
            }
        }
        fetchPatients()
    }
    
    func fetchPatients() {
        let request = NSFetchRequest<PatientEntity>(entityName: "PatientEntity")
        
        do {
            patients = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching. \(error)")
        }
    }
    
    func addPatient(name: String, surname: String, age: Int, fiscalCode: String, lifestyle: String, profession: String, height: Int, weight: Double, allergies: String, foodIntolerances: String) {
        let newPatient = PatientEntity(context: container.viewContext)
        
        newPatient.name = name
        newPatient.surname = surname
        newPatient.age = Int64(age)
        newPatient.fiscalCode = fiscalCode
        newPatient.lifestyle = lifestyle
        newPatient.profession = profession
        newPatient.height = Int64(height)
        newPatient.weight = weight
        //newPatient.allergies = [allergies[0]]
        newPatient.allergies = allergies
//        newPatient.sportss = sports
        newPatient.foodIntolerances = foodIntolerances
//        newPatient.diseasess = diseases
//        newPatient.drugss = drugs
//        newPatient.surgeriess = surgeries
        
        savePatientsData()
    }
    
    func savePatientsData() {
        do {
            try container.viewContext.save()
            fetchPatients()
        } catch let error {
            print("Error saving. \(error)")
        }
    }
    
    func deletePatient(indexSet: IndexSet) {
        guard let index = indexSet.first else { return }
        let entity = patients[index]
        container.viewContext.delete(entity)
        
        savePatientsData()
    }
}

