//
//  CardImageIndicatorView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: - CardImageIndicatorView
struct CardImageIndicatorView: View {
    let currentImageIndex: Int
    let imageCount: Int
    
    var body: some View {
        HStack {
            ForEach(0..<imageCount, id: \.self) { index in
                Capsule()
                    .foregroundStyle(currentImageIndex == index ? .white : .gray)
                    .frame(width: imageIndicatorWidth, height: 4)
                    .padding(.top, 8)
            }
        }
    }
}

// MARK: - CardImageIndicatorView
private extension CardImageIndicatorView {
    var imageIndicatorWidth: CGFloat {
        return SizeConstants.cardWidth / CGFloat(imageCount) - 28
    }
}

#Preview {
    CardImageIndicatorView(currentImageIndex: 1, imageCount: 5)
        .preferredColorScheme(.dark)
}
