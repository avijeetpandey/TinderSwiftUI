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
    @State private var bio = ""
    @State private var occupation = "Buisness man"
    
    let user: User
    
    var body: some View {
        NavigationStack {
            ScrollView {
                EditProfileGridView(user: user)
                    .padding()
                
                VStack(spacing: 24) {
                    VStack(alignment: .leading) {
                        Text("About Me")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        TextField("Add your bio", text: $bio)
                            .padding()
                            .frame(height: 64, alignment: .top)
                            .background(Color(.systemBackground))
                            .font(.subheadline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("OCCUPATION")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        HStack {
                            Image(systemName: "book")
                            Text("Occupation")
                            
                            Spacer()
                            
                            Text(occupation)
                                .font(.footnote)
                        }.padding()
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                    }
                    
                    
                    VStack(alignment: .leading) {
                        Text("GENDER")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        HStack {
                            Text("Man")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }.padding()
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                    }
                    
                    
                    VStack(alignment: .leading) {
                        Text("SEXUAL ORIENTATION")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        HStack {
                            Text("Straight")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }.padding()
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                    }
                }
                
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
    EditProfileView(user: MockData.users[0])
        .preferredColorScheme(.dark)
}
