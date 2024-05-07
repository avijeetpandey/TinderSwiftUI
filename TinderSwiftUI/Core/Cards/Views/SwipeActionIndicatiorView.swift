//
//  SwipeActionIndicatiorView.swift
//  TinderSwiftUI
//
//  Created by Avijeet on 07/05/24.
//

import SwiftUI

// MARK: - SwipeActionIndicatiorView
struct SwipeActionIndicatiorView: View {
    
    @Binding var xOffset: CGFloat
    
    var body: some View {
        HStack {
            Text("LIKE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.green)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.green, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }.rotationEffect(.degrees(-45))
                .opacity(Double(xOffset/SizeConstants.screenCutoff))
            
            Spacer()
            
            
            Text("NOPE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }.rotationEffect(.degrees(45))
                .opacity(Double(xOffset/SizeConstants.screenCutoff * -1))
        }.padding(40)
    }
}

#Preview {
    SwipeActionIndicatiorView(xOffset: .constant(20))
}
