//
//  UserProfileView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 08/05/24.
//

import SwiftUI

// MARK: - UserProfileView
struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentImageIndex: Int = 0
    
    let user: User
    
    var body: some View {
        VStack {
            HStack {
                Text(user.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: TabBarIconsConstants.dismiss.rawValue)
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundStyle(.pink)
                }
            }.padding(.horizontal)
        }
        
        ScrollView {
            VStack {
                ZStack(alignment: .top) {
                    Image(
                        user.profileImageUrls[currentImageIndex]
                    )
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: SizeConstants.cardWidth,
                        height: SizeConstants.cardHeight)
                    .overlay {
                        ImageScrollingOverlay(
                            currentImageIndex: $currentImageIndex,
                            imageCount: user.profileImageUrls.count
                        )
                    }
                    
                    CardImageIndicatorView(
                        currentImageIndex: currentImageIndex,
                        imageCount: user.profileImageUrls.count
                    )
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("About Me")
                        .fontWeight(.semibold)
                    
                    
                    Text(user.bio)
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .font(.subheadline)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Essentials")
                        .fontWeight(.semibold)
                    
                    Label("Women", systemImage: "person")
                    Label("Straight", systemImage: "arrow.down.forward.and.arrow.up.backward.circle")
                    Label("Women", systemImage: "book")
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .font(.subheadline)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users[0])
}
