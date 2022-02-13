//
//  RecipeList.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 31.01.2022.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
            
                Spacer()
            }
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
            ForEach(recipes) { recipe in
// Переход на детейл
                NavigationLink(destination: RecipeDetail(recipe: recipe)) {
                RecipeCard(recipe: recipe)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}
