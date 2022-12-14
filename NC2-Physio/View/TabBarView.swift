//
//  TabBarView.swift
//  NC2-Physio
//
//  Created by Walter Galiano on 12/12/22.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selection = "Today"
    
    var body: some View {
#if os(macOS)
        return view.frame(minWidth: 1420, minHeight: 1080)
#else
        return view
#endif
    }
    
    private var view: some View {
//        NavigationStack {
            TabView {
                Group {
                    TodayView()
                        .tabItem {
                            Label("Listen Now", systemImage: "calendar")
                        }.tag("Today")
                    PatientsView()
                        .tabItem {
                            Label("Patients", systemImage: "person.circle.fill")
                        }.tag("Patients")
                    AppointmentsView()
                        .tabItem {
                            Label("Apointments", systemImage: "list.bullet.clipboard")
                        }.tag("Appointments")
                }
#if os(iOS)
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(Color(uiColor: .systemGray6), for: .tabBar)
#endif
            }
//            .navigationTitle(selection)
//            .navigationBarBackButtonHidden(true)
//        }
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
