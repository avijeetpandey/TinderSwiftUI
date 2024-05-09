//
//  CurrentProfileView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

// MARK: - CurrentProfileView
struct CurrentProfileView: View {
    let user: User
    
    var body: some View {
        List {
            // Header view
            CurrentUserProfileHeaderView(user: user)
            
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
        }
    }
}

#Preview {
    CurrentProfileView(user: MockData.users[1])
        .preferredColorScheme(.dark)
}
