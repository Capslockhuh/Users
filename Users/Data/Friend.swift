//
//  Friend.swift
//  Users
//
//  Created by Jan Andrzejewski on 06/07/2022.
//

import Foundation

struct Friend: Codable, Identifiable {
    var id: UUID
    let name: String
}
