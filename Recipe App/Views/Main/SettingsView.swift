//
//  SettingsView.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 28.01.2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            Text("v1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}
