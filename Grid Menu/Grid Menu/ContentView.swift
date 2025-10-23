//
//  ContentView.swift
//  Grid Menu
//
//  Created by abdul samad on 18/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var visibility: NavigationSplitViewVisibility = .all
    
    
    var body: some View {
        
        NavigationSplitView(columnVisibility: $visibility) {
            
            List {
                ForEach(FoodCategory.allCases, id: \.rawValue) {
                    
                    category in Text(category.rawValue.capitalized)
                }
            }
            .navigationTitle("Categories")
        } content: {
            Color.blue
            
        } detail: {
            Color.green
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    ContentView()
    
        
    }
enum FoodCategory: String, CaseIterable{
    case fruites, vegetables, dairy, eggs, fish, meat, snacks, beverages
}
