//
//  Recipe_AppApp.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 28.01.2022.
//

import SwiftUI

@main
struct Recipe_AppApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
