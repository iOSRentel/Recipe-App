//
//  RecipeDetail.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 31.01.2022.
//

import SwiftUI

struct RecipeDetail: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
            VStack{
//MARK: - Картинка
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
    
            } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80, alignment: .center)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
//            .frame(height: 300)
            }
            
//MARK: - Название
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
//MARK: - Описание
                VStack(alignment: .leading, spacing: 30) {
                if !recipe.description.isEmpty {
                Text(recipe.description)
                }
//MARK: - ингридиенты
                if !recipe.ingridients.isEmpty {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Ingridients")
                            .font(.headline)
                
                        Text(recipe.ingridients)
                }
            }
//MARK: - Способ приготовления
                if !recipe.directions.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Directions")
                                .font(.headline)

                            Text(recipe.directions)
                        }
                    }
                }
            .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
