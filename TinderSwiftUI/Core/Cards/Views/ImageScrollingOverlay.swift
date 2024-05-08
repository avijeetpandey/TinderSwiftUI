//
//  ImageScrollingOverlay.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: -  ImageScrollingOverlay
struct ImageScrollingOverlay: View {
    @Binding var currentImageIndex: Int
    let imageCount: Int
    
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                   updateImageIndex(increment: false)
                }
            
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: true)
                }
            
        }.foregroundStyle(.red.opacity(0.001))
    }
}

// MARK: - Handling of tap on images
private extension ImageScrollingOverlay {
    func updateImageIndex(increment: Bool) {
        if increment {
            guard currentImageIndex < imageCount - 1 else { return }
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex -= 1
        }
    }
}


#Preview {
    ImageScrollingOverlay(currentImageIndex: .constant(0), imageCount: 1)
}
