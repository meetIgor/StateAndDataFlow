//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import Foundation

class UserManager: ObservableObject {
    
    @Published var name = ""
    
    var isRegister: Bool {
        !name.isEmpty
    }
    
}
