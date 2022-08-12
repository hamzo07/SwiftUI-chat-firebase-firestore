//
//  MessageBubble.swift
//  ChatApp Demo
//
//  Created by Hamza Usmani on 11/08/22.
//

import SwiftUI

struct MessageBubble: View {
    
    var message: Message
    @State private var showTime: Bool = false
    
    private var isReceived: Bool {
        message.received
    }
    
    var body: some View {
        VStack(alignment: isReceived ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .font(.ralewayMedium(withSize: 14))
                    .padding()
                    .background(isReceived ? Color.customGray : Color.customPeach)
                    .cornerRadius(30.0)
                
            }
            .frame(maxWidth: 300, alignment: isReceived ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.ralewaySemiBold(withSize: 10))
                    .foregroundColor(.customGray)
                    .padding(isReceived ? .leading : .trailing, 20)
            }
            
        }
        .frame(maxWidth: .infinity, alignment: isReceived ? .leading: .trailing)
        .padding(isReceived ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "ads", text: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.", received: true, timestamp: .init()))
    }
}
