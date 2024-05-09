//
//  CurrentUserProfileHeaderView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

struct CurrentUserProfileHeaderView: View {
    let user: User
    
    
    var body: some View {
        VStack(spacing: 16) {
            ZStack(alignment: .topTrailing) {
                Image(user.profileImageUrls[0])
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 120, height: 120)
                    .background(
                        Circle()
                            .fill(Color(.systemGray6))
                            .frame(width: 128, height: 128)
                            .shadow(radius: 10)
                    )
                
                Image(systemName: TabBarIconsConstants.editIcon.rawValue)
                    .imageScale(.small)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                    )
                    .foregroundStyle(.gray)
                    .offset(x: -8.0, y: 10.0)
            }
            
            Text("\(user.fullName), \(user.age)")
                .font(.title2)
                .fontWeight(.light)
        }.frame(height: 240)
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    CurrentUserProfileHeaderView(user: MockData.users[0])
}
