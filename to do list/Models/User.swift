//
//  User.swift
//  to do list
//
//  Created by Sebastian Sanchis on 18/11/2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
