//
//  ListView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewModel = ListViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To do list")
            .toolbar {
                Button {
                    // action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ListView(userId: "")
}
