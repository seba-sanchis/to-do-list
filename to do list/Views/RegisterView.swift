//
//  RegisterView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
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
                    TextField("Full name", text: $name)
                        .autocorrectionDisabled()
                    
                    TextField("Email", text: $email)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $password)
                    
                    HStack {
                        Spacer()
                        ButtonView(title: "Create account") {
                            
                        }
                        Spacer()
                    }
                    
                }
                .padding([.top, .bottom], 88)
                
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
