//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Elexoft on 04/03/2025.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        VStack {
            // CARD IMAGE
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        } //: VSTACK
                    } //: HSTACK
                }
        } //: VSTACK
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

// MARK: - PREVIEW

#Preview {
    RecipeCardView(recipe: recipesData[0])
        .previewLayout(.sizeThatFits)
}
