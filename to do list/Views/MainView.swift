//
//  MainView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 17/11/2023.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LogInView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
