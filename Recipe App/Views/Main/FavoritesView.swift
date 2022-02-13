//
//  FavoritesView.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 28.01.2022.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView{
            Text("You haven't saved any recipe to your favorites yet.")
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}
