//
//  Message.swift
//  ChatApp Demo
//
//  Created by Hamza Usmani on 11/08/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}

var messages: [Message] = [
    .init(id: "1", text: "Hello you", received: true, timestamp: .init()),
    .init(id: "2", text: "Hello are you doing", received: true, timestamp: .init()),
    .init(id: "3", text: "Swift UI is awesome, i have been working on it from scrach", received: true, timestamp: .init())
]
