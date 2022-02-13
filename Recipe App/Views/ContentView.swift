//
//  ContentView.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 28.01.2022.
//https://www.youtube.com/watch?v=uqkUumqFiF8

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
