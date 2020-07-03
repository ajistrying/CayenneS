//
//  ContentView.swift
//  CayenneS
//
//  Created by Wellington Johnson on 6/27/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RecipeListView()
                .tabItem {
                    Image(systemName: "r.circle")
                    Text("Recipes")
            }
            CreateARecipeView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Create Recipe")
            }
            CookbookListView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Cookbooks")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
