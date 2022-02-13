//
//  TabBar.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 28.01.2022.
//MARK: - !!!! Проработать TabBar через enum! !!!!

import SwiftUI

struct TabBar: View {
    var body: some View {
//MARK: - !!!! Проработать TabBar через enum! !!!!

        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
           NewRecipe()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
            }
        }
    }
}
