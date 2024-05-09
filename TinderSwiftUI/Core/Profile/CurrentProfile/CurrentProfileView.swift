//
//  CurrentProfileView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

// MARK: - CurrentProfileView
struct CurrentProfileView: View {
    @State private var showEditProfile = false
    let user: User
    
    var body: some View {
        NavigationStack {
            List {
                // Header view
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }
                
                // account info view
                Section("Account Settings") {
                    HStack{
                        Text("Name")
                        Spacer()
                        Text(user.fullName)
                    }
                    
                    HStack{
                        Text("Email")
                        Spacer()
                        Text(user.email)
                    }
                }
                
                // legal view
                
                Section("Legal") {
                    Text("Terms Of Service")
                }
                
                // Logout/ delete account view
                Section {
                    Button("Logout") {
                        debugPrint("Logout tapped")
                    }
                }.foregroundStyle(.red)
                
                Section {
                    Button("Delete Account") {
                        debugPrint("Delete Account tapped")
                    }
                }.foregroundStyle(.red)
            }.navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                .fullScreenCover(isPresented: $showEditProfile) {
                    EditProfileView(user: user)
                }
        }
    }
}

#Preview {
    CurrentProfileView(user: MockData.users[1])
}
