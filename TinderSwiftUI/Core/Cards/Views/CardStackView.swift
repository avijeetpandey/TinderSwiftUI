//
//  CardStackView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 08/05/24.
//

import SwiftUI

// MARK: - CardStackView
struct CardStackView: View {
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                ZStack {
                    ForEach(viewModel.cardModels) { card in
                        CardView(cardModel: card, viewModel: viewModel)
                    }
                }
                
                if !viewModel.cardModels.isEmpty {
                    SwipeActionButtonViews(viewModel: viewModel)
                }
            }.toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    ToolBarView()
                }
            }
        }
    }
}

#Preview {
    CardStackView()
}
