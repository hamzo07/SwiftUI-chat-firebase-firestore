//
//  ContentView.swift
//  ChatApp Demo
//
//  Created by Hamza Usmani on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messageManager = MessageManager()
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView(showsIndicators: false) {
                    ForEach(messageManager.messages, id: \.id) { message in
                        MessageBubble(message: message)
                    }
                }
                .padding()
                .background(Color(uiColor: .systemBackground))
                .cornerRadius(30, corner: [.topLeft, .topRight])
            }
            .background(Color.customPeach)
            
            MessageField()
                .environmentObject(messageManager)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
