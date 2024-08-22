//
//  Keyboard Dismiss.swift
//  MASNScaner
//
//  Created by Brian Young on 6/27/22.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
