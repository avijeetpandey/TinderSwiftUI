//
//  MockData.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 08/05/24.
//

import Foundation

// MARK: - MockData
struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullName: "Aman Sehrawat",
            age: 32,
            profileImageUrls: ["person1","person2","person3"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Nikhil D'souza",
            age: 31,
            profileImageUrls: ["person4","person6"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Karan",
            age: 22,
            profileImageUrls: ["person7","person8","person9","person5"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Pinky Ponky",
            age: 132,
            profileImageUrls: ["person10"]
        )
    ]
}
