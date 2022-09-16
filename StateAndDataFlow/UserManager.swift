//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import Foundation
import SwiftUI

class UserManager: ObservableObject {
    
    @AppStorage("username") var name = ""
    
    var isRegister: Bool {
        !name.isEmpty
    }
    
}