//
//  SwipeActionButtonViews.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 08/05/24.
//

import SwiftUI

// MARK: - SwipeActionButtonViews
struct SwipeActionButtonViews: View {
    @ObservedObject var viewModel: CardsViewModel
    
    var body: some View {
        HStack(spacing: 32) {
            Button {
                viewModel.buttonSwipeAction = .reject
            } label: {
                Image(systemName: TabBarIconsConstants.cross.rawValue)
                    .fontWeight(.heavy)
                    .foregroundStyle(.red)
                    .background {
                        Circle()
                            .fill(.white)
                            .shadow(radius: 6)
                            .frame(width: 48, height: 48)
                    }
            }.frame(width: 48, height: 48)
            
            
            Button {
                viewModel.buttonSwipeAction = .like
            } label: {
                Image(systemName: TabBarIconsConstants.like.rawValue)
                    .fontWeight(.heavy)
                    .foregroundStyle(.green)
                    .background {
                        Circle()
                            .fill(.white)
                            .shadow(radius: 6)
                            .frame(width: 48, height: 48)
                    }
            }.frame(width: 48, height: 48)
        }
    }
}

#Preview {
    SwipeActionButtonViews(viewModel: CardsViewModel(service: CardService()))
}
