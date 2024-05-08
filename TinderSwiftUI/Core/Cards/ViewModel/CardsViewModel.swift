//
//  CardsViewModel.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 08/05/24.
//

import Foundation

// MARK: - CardsViewModel
class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task {
            await fetchCardModels()
        }
    }
    
    func fetchCardModels() async {
        do {
            self.cardModels = try await service.fetchCards()
        } catch {
            debugPrint("DEBUG: Failed to print cards")
        }
    }
    
    func removeCard(_ model: CardModel) {
        guard let index = cardModels.firstIndex(where: {card in model.id == card.id}) else { return }
        cardModels.remove(at: index)
    }
}
