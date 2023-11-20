//
//  LogInView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import SwiftUI

struct LogInView: View {
    
   @StateObject var viewModel = LogInViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                ContainerRelativeShape()
                    .fill(.pink.gradient)
                    .ignoresSafeArea()
                
                VStack {
                    // Header
                    VStack {
                        Text("To do list")
                            .font(.system(size: 48, weight: .semibold))
                            .foregroundColor(.white)
                        
                        Text("Productivity App.")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                    }
                    .padding(48)
                    
                    // Log in form
                    Form {
                        TextField("Email", text: $viewModel.email)
                            .autocapitalization(.none)
                            .autocorrectionDisabled()
                        
                        SecureField("Password", text: $viewModel.password)
                        
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundColor(Color.red)
                        }
                        
                        HStack {
                            Spacer()
                            ButtonView(title: "Log In") {
                                viewModel.login()
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
}

#Preview {
    LogInView()
}
