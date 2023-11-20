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
            ListView()
        } else {
            LogInView()
        }
    }
}

#Preview {
    MainView()
}
