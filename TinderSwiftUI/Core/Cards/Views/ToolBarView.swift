//
//  ToolBarView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 08/05/24.
//

import SwiftUI

// MARK: - ToolBarView
struct ToolBarView: View {
    var body: some View {
        
        HStack(spacing: 2) {
            Image(systemName: TabBarIconsConstants.home.rawValue)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.red)
                .frame(width: 12, height: 16)
            
            Text(AppConstants.toolbarTitle.rawValue)
                .font(.callout)
                .bold()
        }
        
    }
}

#Preview {
    ToolBarView()
}
