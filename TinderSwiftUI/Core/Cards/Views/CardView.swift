//
//  CardView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: - CardView
struct CardView: View {
    // state variables
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var currentImageIndex = 0
    @State private var showProfileModal: Bool = false
    @State var cardModel: CardModel
    let viewModel: CardsViewModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(
                    cardModel.user.profileImageUrls[currentImageIndex]
                )
                .resizable()
                .scaledToFill()
                .frame(
                    width: SizeConstants.cardWidth,
                    height: SizeConstants.cardHeight)
                .overlay {
                    ImageScrollingOverlay(
                        currentImageIndex: $currentImageIndex,
                        imageCount: cardModel.user.profileImageUrls.count
                    )
                }
                
                CardImageIndicatorView(
                    currentImageIndex: currentImageIndex,
                    imageCount: cardModel.user.profileImageUrls.count
                )
                
                SwipeActionIndicatiorView(
                    xOffset: $xOffset
                )
            }
            
            UserInfoView(showProfileModal: $showProfileModal, user: cardModel.user)
        }                .frame(
            width: SizeConstants.cardWidth,
            height: SizeConstants.cardHeight
        )
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .fullScreenCover(isPresented: $showProfileModal) {
            UserProfileView(user: cardModel.user)
        }
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .onReceive(viewModel.$buttonSwipeAction, perform: { action in
           onRecieveSwipeAction(action)
        })
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

// MARK: - Swiping functionalities
private extension CardView {
    func swipeLeft() {
        withAnimation {
            xOffset = -500
            degrees = -12
        } completion: {
            viewModel.removeCard(cardModel)
        }
    }
    
    func swipeRight() {
        withAnimation {
            xOffset = 500
            degrees = 12
        } completion: {
            viewModel.removeCard(cardModel)
        }
    }
    
    func returnToCenter() {
        xOffset = 0
        degrees = 0
    }
    
    func onRecieveSwipeAction(_ action: SwipeAction?) {
        guard let action = action else { return }
        let topCard = viewModel.cardModels.last
        
        if topCard == cardModel {
            switch action {
            case .like:
                swipeRight()
            case .reject:
                swipeLeft()
            }
        }
    }
}

// MARK: - drag gesture handling
private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width/25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutoff) {
            returnToCenter()
            return
        }
        
        if width >= SizeConstants.screenCutoff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}

#Preview {
    CardView(cardModel: .init(user: MockData.users[0]),
             viewModel: CardsViewModel(service: CardService()))
}
