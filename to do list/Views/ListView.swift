//
//  ListView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import SwiftUI
import FirebaseFirestore

struct ListView: View {
    @StateObject var viewModel = ListViewModel()
    @FirestoreQuery var items: [Item]
    
    init(userId: String) {
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ItemView(item: item)
                        .swipeActions {
                            Button {
                                viewModel.delete(id: item.id)
                            } label: {
                                Text("Delete")
                                    .foregroundColor(.red)
                            }
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To do list")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ListView(userId: "gfW0s0TIhuVKMzEVZvB6f22Vttl2")
}
