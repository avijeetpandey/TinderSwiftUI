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
        ZStack {
            ForEach(viewModel.cardModels) { card in
                CardView(cardModel: card)
            }
        }
    }
}

#Preview {
    CardStackView()
}
