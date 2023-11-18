//
//  LogInView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import SwiftUI

struct LogInView: View {
    
    @State var email = ""
    @State var password = ""
    
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
                    
                    // LogIn form
                    Form {
                        TextField("Email", text: $email)
                        SecureField("Password", text: $password)
                        
                        Button {
                            
                        } label: {
                            Text("Log In")
                                .frame(width: 280, height: 48)
                                .background(.pink)
                                .foregroundColor(.white)
                                .font(.system(size: 24, weight: .semibold))
                                .cornerRadius(.infinity)
                        }
                    }
                    .padding([.top, .bottom], 96)
                    
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
