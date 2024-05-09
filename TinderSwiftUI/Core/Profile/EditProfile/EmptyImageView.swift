//
//  EmptyImageView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

struct EmptyImageView: View {
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.secondarySystemBackground))
                .frame(width: imageWidth, height: imageHeight)
                .shadow(radius: 4)
            
            Image(systemName: TabBarIconsConstants.addFilled.rawValue)
                .imageScale(.large)
                .foregroundStyle(Color(.systemPink))
                .offset(x: 4, y: 4)
            
        }
    }
}

#Preview {
    EmptyImageView(imageWidth: 110, imageHeight: 160)
}
