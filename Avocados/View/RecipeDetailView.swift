//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Elexoft on 04/03/2025.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    // TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    // RATINGS
                    RecipeRatingView(recipe: recipe)
                    
                    // COOKING
                    RecipeCookingView(recipe: recipe)
                    
                    // INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            } //: VSTACK
                        } //: LOOP
                    } //: VSTACK
                    
                    // INSTRUCTIONS
                    
                } //: GROUP
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            } //: VSTACK
        } //: SCROLL
        .edgesIgnoringSafeArea(.top)
    }
}

// MARK: - PREVIEW

#Preview {
    RecipeDetailView(recipe: recipesData[0])
        .previewLayout(.fixed(width: 320, height: 60))
}
