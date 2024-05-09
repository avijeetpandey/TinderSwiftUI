//
//  MainTabBar.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: - MainTabView
struct MainTabView: View {
    var body: some View {
        TabView {
            CardStackView()
                .tabItem {
                    Image(systemName: TabBarIconsConstants.home.rawValue)
                }
            
            Text("Search view")
                .tabItem {
                    Image(systemName: TabBarIconsConstants.search.rawValue)
                }
            
            Text("Messaging view")
                .tabItem {
                    Image(systemName: TabBarIconsConstants.messaging.rawValue)
                }
            
            CurrentProfileView(user: MockData.users[0])
                .tabItem {
                Image(systemName: TabBarIconsConstants.profile.rawValue)
            }
        }.tint(.primary)
    }
}

#Preview {
    MainTabView()
}
