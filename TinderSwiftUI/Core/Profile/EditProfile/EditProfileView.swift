//
//  EditProfileView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 09/05/24.
//

import SwiftUI

// MARK: - EditProfileView
struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
            }.scrollIndicators(.hidden)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(ActionItemsConstants.cancel.rawValue.capitalized) {
                            dismiss()
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(ActionItemsConstants.done.rawValue.capitalized) {
                            dismiss()
                        }.fontWeight(.semibold)
                    }
                }.navigationTitle(AppConstants.editScreenTitle.rawValue)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    EditProfileView()
}
