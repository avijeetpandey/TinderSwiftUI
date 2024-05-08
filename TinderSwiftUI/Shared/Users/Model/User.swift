//
//  User.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 08/05/24.
//

import Foundation

// MARK: - User
struct User: Identifiable, Hashable {
    let id: String
    let fullName: String
    var age: Int
    var profileImageUrls: [String]
    let bio: String
}
