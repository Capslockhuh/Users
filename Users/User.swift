//
//  User.swift
//  Users
//
//  Created by Jan Andrzejewski on 06/07/2022.
//

import Foundation

struct User: Codable, Identifiable {
    var id: UUID
    var isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
}
