//
//  CardView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: - CardView
struct CardView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.person1)
                .resizable()
                .scaledToFill()
            
            UserInfoView()
                .padding(.horizontal)
            
        }                .frame(width: cardWidth, height: cardHeight)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

// MARK: - Extension
private extension CardView {
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}

#Preview {
    CardView()
}
