//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import Foundation
import SwiftUI

class UserManager: ObservableObject {
    
    //@AppStorage("username") var name = ""
    @AppStorage("username") var isRegister = false
    @AppStorage("isRegister") var name = ""
    
    //@AppStorage("user") var user = Data?
    
}

struct User {
    var name = ""
    var isRegister = false
}
