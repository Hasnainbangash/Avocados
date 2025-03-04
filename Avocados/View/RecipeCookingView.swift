//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Elexoft on 04/03/2025.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            } //: HSTACK
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            } //: HSTACK
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            } //: HSTACK
        } //: HSTACK
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

// MARK: - PREVIEW

#Preview {
    RecipeCookingView(recipe: recipesData[0])
        .previewLayout(.fixed(width: 320, height: 60))
}
