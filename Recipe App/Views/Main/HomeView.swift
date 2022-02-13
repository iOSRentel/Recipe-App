//
//  HomeView.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 28.01.2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesVM.recipes)
                }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}
