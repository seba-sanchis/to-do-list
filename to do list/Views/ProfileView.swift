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
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
