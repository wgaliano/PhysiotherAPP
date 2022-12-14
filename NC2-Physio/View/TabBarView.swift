//
//  TabBarView.swift
//  NC2-Physio
//
//  Created by Walter Galiano on 12/12/22.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
#if os(macOS)
        return view.frame(minWidth: 1420, minHeight: 1080)
#else
        return view
#endif
    }
    
    private var view: some View {
        TabView {
            Group {
                TodayView()
                    .tabItem {
                        Label("Listen Now", systemImage: "calendar")
                    }
                PatientsView()
                    .tabItem {
                        Label("Patients", systemImage: "person.circle.fill")
                    }
                AppointmentsView()
                    .tabItem {
                        Label("Apointments", systemImage: "list.bullet.clipboard")
                    }
            }
#if os(iOS)
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(Color(uiColor: .systemGray6), for: .tabBar)
#endif
        }
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
