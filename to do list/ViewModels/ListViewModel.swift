//
//  ListViewModel.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import Foundation
import FirebaseFirestore

class ListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
