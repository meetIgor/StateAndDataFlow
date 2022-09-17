//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject private var user: UserManager
    
    var isValidName: Bool {
        name.count >= 3
    }
    
    var body: some View {
        
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center )
                Text(name.count.formatted())
                    .foregroundColor(isValidName ? .green : .red)
            }
            
            Button(action: registerUser) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .disabled(!isValidName)
        }
        .padding()
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.user.name = name
            user.user.isRegister = true
            StorageManager.shared.save(user)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
