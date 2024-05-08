//
//  CardService.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 08/05/24.
//

import Foundation

// MARK: - CardService
struct CardService {
    func fetchCards() async throws -> [CardModel] {
        let users: [User] = MockData.users
        return users.map({ CardModel(user: $0) })
    }
}
