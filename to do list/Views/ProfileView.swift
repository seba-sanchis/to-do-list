//
//  ProfileView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.pink)
            .frame(width: 128, height: 128)
            .padding()
        
        // Info: Name, Email, Member since
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Name: ")
                    .font(.system(size: 16, weight: .semibold))
                Text(user.name)
            }
            HStack {
                Text("Email: ")
                    .font(.system(size: 16, weight: .semibold))
                Text(user.email)
            }
            HStack {
                Text("Member Since: ")
                    .font(.system(size: 16, weight: .semibold))
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
        }
        .padding()
        
        Spacer()
        
        // Sign out
        ButtonView(title: "Log out") {
            viewModel.logOut()
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
