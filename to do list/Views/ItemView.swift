//
//  ItemView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import SwiftUI

struct ItemView: View {
    @StateObject var viewModel = ItemViewModel()
    let item: Item
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.system(size: 16, weight: .semibold))
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.system(size: 16))
            }
            
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    ItemView(item: .init(id: "1",
                         title: "Get milk",
                         dueDate: Date().timeIntervalSince1970,
                         createdDate: Date().timeIntervalSince1970,
                         isDone: false))
}
