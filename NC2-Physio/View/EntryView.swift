//
//  EntryView.swift
//  NC2-Physio
//
//  Created by Walter Galiano on 12/12/22.
//

import SwiftUI

struct EntryView: View {
    
    // MARK: This chunk of code is only built on iOS devices. It sets a variable with the Interface Size Class, which is .compact for the iPhone and .regular for the iPad
#if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
#endif
    // -----------------------------------------------------------------------------
    
    
    var body: some View {
        
        // MARK: Here we display different views based on the operative system and device we're on
#if os(iOS)
        if horizontalSizeClass == .compact {
            TabBarView()
        } else {
            NavigationSplitView {
                SideBarView()
            } detail: {
                TodayView()
            }
        }
#elseif os(macOS)
        NavigationSplitView {
            SideBarView()
        } detail: {
            TodayView()
        }
        
#elseif os(tvOS)
        TabBarView()
#endif
        // ------------------------------------------------------------------------
        
    }
}



struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
#if os(iOS)
        Group {
            EntryView()
                .previewDevice("iPhone 13")
                .previewDisplayName("iPhone 13")
            EntryView()
                .previewDevice("iPad Pro (12.9-inch) (6th generation)")
                .previewDisplayName("iPad Pro (12.9-inch)")
                .previewInterfaceOrientation(.landscapeLeft)
        }
#elseif os(macOS)
        EntryView()
            .previewDisplayName("My Mac")
#elseif os(tvOS)
        EntryView()
            .previewDisplayName("Apple TV")
#endif
    }
}

