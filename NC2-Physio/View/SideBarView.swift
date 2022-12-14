//
//  SideBarView.swift
//  NC2-Physio
//
//  Created by Walter Galiano on 12/12/22.
//

import SwiftUI

struct SideBarView: View {
    enum ScreenTag: Hashable {
        case schedule, patients, calendar
    }
    
    @State var selection: ScreenTag? = .schedule
    @State var searchText: String = ""
    
    var body: some View {
        List(selection: $selection) {
            Section(header:
                        Text("Today")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: TodayView(),
                    label: {
                        Label("Schedule", systemImage: "calendar")
                    }
                )
            }
            
            Section(header:
                        Text("Archive")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: PatientsView(),
                    label: {
                        Label("Patients", systemImage: "person.circle.fill")
                    }
                )
            }
            
            Section(header:
                        Text("Appointments")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.secondary)
            ) {
                NavigationLink(
                    destination: AppointmentsView(),
                    label: {
                        Label("Calendar", systemImage: "list.bullet.clipboard")
                    }
                )
            }
            
        }
#if os(iOS)
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
#else
        .searchable(text: $searchText)
#endif
        .navigationTitle("PhysiotherAPP")
        .listStyle(SidebarListStyle())
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}


