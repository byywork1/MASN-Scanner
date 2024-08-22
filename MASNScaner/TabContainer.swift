//
//  TabContainer.swift
//  MASNScaner
//
//  Created by Brian Young on 6/27/22.
//

import SwiftUI


struct TabContainer: View {
    
    @StateObject var attendees = Attendees()
    @State private var selectedTab = "ConferenceSelector"
    
    var body: some View {
        
        
        TabView{
            //all texts are placeholders for pages
            ConferenceSelector()
                .tabItem{
                    Label("ConferenceSelector",systemImage: "house")
                }
            
            QRCodeScanner()
                .tabItem{
                    Label("QRCode Scanner",systemImage: "camera")
                }
            
            ManualEnter()
                .tabItem{
                    Label("Manual Enter",systemImage: "magnifyingglass")
                }
        }
        .environmentObject(Attendees())
        
    }
}

struct TabContainer_Previews: PreviewProvider {
    static var previews: some View {
        TabContainer()
            .environmentObject(Attendees())
    }
}
