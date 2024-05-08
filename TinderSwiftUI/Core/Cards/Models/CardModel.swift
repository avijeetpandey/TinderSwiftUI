//
//  CardModel.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 08/05/24.
//

import Foundation

// MARK: - CardModel
struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String { user.id }
}
