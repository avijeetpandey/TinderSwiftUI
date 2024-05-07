//
//  UserInfoView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: - UserInfoView
struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Megan")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("37")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                
                Button {
                    print("Debug button here")
                } label: {
                    Image(systemName: TabBarIconsConstants.arrowUp.rawValue)
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text("Actress | Witch")
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
    UserInfoView()
}
