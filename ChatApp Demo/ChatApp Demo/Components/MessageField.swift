//
//  MessageField.swift
//  ChatApp Demo
//
//  Created by Hamza Usmani on 11/08/22.
//

import SwiftUI

struct MessageField: View {
    @State private var message: String = ""
    @EnvironmentObject var messageManager: MessageManager
    var body: some View {
        HStack() {
            CustomTextField(text: $message)
            
            Button(action: {
                messageManager.sendMessage(text: message)
                message = ""
            }) {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(Color(uiColor: .systemBackground))
                    .padding(10)
                    .background(Color.customPeach)
                    .cornerRadius(50.0)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.customGray)
        .cornerRadius(50.0)
        .padding()
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
            .environmentObject(MessageManager())
    }
}

struct CustomTextField: View {
    
    @Binding var text: String
    var editingChanges: (Bool) -> Void = {_ in }
    var commit: () -> Void = { }
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter Your Message here", text: $text, onEditingChanged: editingChanges, onCommit: commit)
                .padding()
        }
    }
}
