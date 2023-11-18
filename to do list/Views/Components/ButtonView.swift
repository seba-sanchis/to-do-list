//
//  ButtonView.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .frame(width: 280, height: 48)
                .background(.pink)
                .foregroundColor(.white)
                .font(.system(size: 24, weight: .semibold))
                .cornerRadius(.infinity)
        }
    }
}

#Preview {
    ButtonView(title: "Value", action: {})
}
