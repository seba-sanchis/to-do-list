//
//  RegisterView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(.pink.gradient)
                .ignoresSafeArea()
            
            VStack {
                // Header
                VStack {
                    Text("Create your account")
                        .font(.system(size: 32, weight: .semibold))
                        .foregroundColor(.white)
                    
                    Text("An account is all you need.")
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                }
                .padding(48)
                
                // LogIn form
                Form {
                    TextField("Full name", text: $viewModel.name)
                        .autocorrectionDisabled()
                    
                    TextField("Email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                    
                    HStack {
                        Spacer()
                        
                        ButtonView(title: "Create account") {
                            viewModel.register()
                        }
                        
                        Spacer()
                    }
                    
                }
                
                // Create account
                VStack {
                    Text("Don’t have an account?")
                        .foregroundColor(.white)
                    
                    
                    NavigationLink("Create yours now.", destination: RegisterView())
                }
                .padding(48)
            }
        }
    }
}

#Preview {
    RegisterView()
}
