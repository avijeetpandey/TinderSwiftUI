//
//  UserInfoView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: - UserInfoView
struct UserInfoView: View {
    @Binding var showProfileModal: Bool
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(user.fullName)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                
                Button {
                    showProfileModal.toggle()
                } label: {
                    Image(systemName: TabBarIconsConstants.arrowUp.rawValue)
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text(user.bio)
                .font(.subheadline)
                .lineLimit(2)
        }.padding()
            .foregroundStyle(.white)
            .background(
                LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
            )
    }
}

#Preview {
    UserInfoView(showProfileModal: .constant(true), user: MockData.users[0])
}
