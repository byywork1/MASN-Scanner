//
//  Authentication.swift
//  MASNScaner
//
//  Created by Brian Young on 6/27/22.
//

import SwiftUI

class Authentication: ObservableObject{
    @Published var isValid = false
    
    enum AuthenticationError: Error, LocalizedError, Identifiable {
        case invalidCredentials
        
        
        var id: String {
            self.localizedDescription
        }
        var errorDescription: String?{
            switch self {
            case .invalidCredentials:
                return NSLocalizedString("Your username or password is incorrect please try again", comment: "")
            }
        }
    }
    
    func updateValid(sucess: Bool){
        withAnimation{
            isValid = sucess
        }
    }
}
