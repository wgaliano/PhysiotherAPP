//
//  ContentView.swift
//  NC2-Physio
//
//  Created by Rossella Bianco on 07/12/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            TabView {
                TodayView()
                    .tabItem {
                        Label("Today", systemImage: "calendar")
                    }
                PatientsView()
                    .tabItem {
                        Label("Patients", systemImage: "person.circle.fill")
                    }
                AppointmentsView()
                    .tabItem {
                        Label("Appointments", systemImage: "list.bullet.clipboard")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
