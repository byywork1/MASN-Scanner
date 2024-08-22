//
//  MASNScanerApp.swift
//  MASNScaner
//
//  Created by Brian Young on 6/23/22.
//

import SwiftUI

@main
struct MASNScanerApp: App {
    @StateObject var authentication = Authentication()
    
    var body: some Scene {
        WindowGroup {
            if authentication.isValid {
                TabContainer().environmentObject(authentication)
            }
            else{
                LoginView().environmentObject(authentication)
            }
        }
    }
}
