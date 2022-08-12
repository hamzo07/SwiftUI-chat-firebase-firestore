//
//  MessageManager.swift
//  ChatApp Demo
//
//  Created by Hamza Usmani on 11/08/22.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class MessageManager: ObservableObject {
    @Published private(set) var messages: [Message] = []
    let db = Firestore.firestore()
    
    init() {
        getMessages()
    }
    
    
    func getMessages() {
        db.collection("messages").addSnapshotListener { snapshot, error in
            guard let documents = snapshot?.documents else {
                print("error fetching snapshot \(String(describing: error))")
                return
            }
            
            self.messages = documents.compactMap { document -> Message? in
                do {
                    return try document.data(as: Message.self)
                } catch {
                    print("error decoding document into message \(error)")
                    return nil
                }
                
            }
            
            self.messages.sort { $0.timestamp < $1.timestamp }
        }
    }
    
    
    func sendMessage(text: String) {
        do {
            let newMessage = Message(id: "\(UUID())", text: text, received: false, timestamp: .init())
            try db.collection("messages").addDocument(from: newMessage)
        } catch {
            print("error sending message \(error)")
        }
    }
}
