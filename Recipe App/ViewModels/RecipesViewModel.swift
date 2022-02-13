//
//  RecipesViewModel.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 31.01.2022.
//

import Foundation


class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
// Сохранение рецепта
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
