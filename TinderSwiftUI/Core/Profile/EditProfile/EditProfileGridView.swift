//
//  EditProfileGridView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

struct EditProfileGridView: View {
    let user: User
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(0..<6) { index in
                if index < user.profileImageUrls.count {
                    Image(user.profileImageUrls[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 110, height: 160)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 4)
                    
                } else {
                    EmptyImageView(imageWidth: imageWidth,
                                   imageHeight: imageHeight)
                }
            }
        }
    }
}

// MARK: - Grid constants
private extension EditProfileGridView {
    var columns: [GridItem] {
        [
            .init(.flexible()),
            .init(.flexible()),
            .init(.flexible())
        ]
    }
    
    var imageWidth: CGFloat {
        return 110
    }
    
    var imageHeight: CGFloat {
        return 160
    }
}

#Preview {
    EditProfileGridView(user: MockData.users[0])
}
