//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by igor s on 15.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        
        VStack {
            UserTextField(
                name: $userManager.user.name,
                nameIsValid: userManager.nameIsValid
            )
            
            Button(action: registerUser) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .disabled(!userManager.nameIsValid)
        }
        .padding()
    }
    
    private func registerUser() {
        userManager.user.isRegistered.toggle()
        StorageManager.shared.save(user: userManager.user)
    }
}

struct UserTextField: View {
    @Binding var name: String
    var nameIsValid = false
    
    var body: some View {
        HStack {
            TextField("Enter your name", text: $name)
                .multilineTextAlignment(.center )
            Text(name.count.formatted())
                .foregroundColor(nameIsValid ? .green : .red)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
