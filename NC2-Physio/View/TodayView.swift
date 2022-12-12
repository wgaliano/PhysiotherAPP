//
//  TodayView.swift
//  NC2-Physio
//
//  Created by Walter Galiano on 12/12/22.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        NavigationView {
            List {
                Text("11:00 - 12:00\nViviana Pipola\nTECARTERAPIA")
                Text("12:00 - 13:00\nAndrea Di Donato\nPRESSOTERAPIA")
                Text("11:00 - 12:00\nRossella Bianco\nCRIOTERAPIA")
            }
            .navigationTitle("Today")
        }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
