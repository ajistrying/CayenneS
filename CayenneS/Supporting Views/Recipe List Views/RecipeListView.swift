//
//  RecipeListView.swift
//  CayenneS
//
//  Created by Wellington Johnson on 6/27/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct RecipeListView: View {
    
    @State var recipes = RecipeListView.makeRecipes()
    @State var isPresented = false
    
    var body: some View {
        NavigationView{
            List {
                ForEach(recipes,id: \.recipeName){ recipe in
                    NavigationLink(destination: RecipeDetail(recipe: recipe)){
                        RecipeRow(recipe: recipe)
                    }
                }.onDelete(perform: deleteRecipe(at:))
            }
            .sheet(isPresented: $isPresented){
                CreateARecipeView { recipeName, recipeDescription, prepTime, cookTime, servings in
                    self.addRecipe(recipeName: recipeName, recipeDescription: recipeDescription, prepTime: prepTime, cookTime: cookTime, servings: servings)
                    self.isPresented = false
                }
            }
            .navigationBarTitle(Text("Recipes"))
            .navigationBarItems(trailing:
                Button(action: {self.isPresented.toggle()}, label: {
                    Text("Add Recipe").foregroundColor(.blue)
                    Image(systemName: "plus")
                })
            )
        }
    }
    
    func deleteRecipe(at offsets: IndexSet){
        recipes.remove(atOffsets: offsets)
    }
    
    func addRecipe(recipeName: String, recipeDescription: String, prepTime: String, cookTime: String, servings: String)
    {
        let newRecipe = Recipe(recipeName: recipeName, recipeDescription: recipeDescription, prepTime:prepTime, cookTime: cookTime, servings: servings)
        recipes.append(newRecipe)
    }
    
    static func makeRecipes() -> [Recipe] {
        let cereal = Recipe(
            recipeName: "Cereal",
            recipeDescription: "Cinnamon Toast Crunch",
            prepTime: "15",
            cookTime: "10",
            servings: "1")
        let oatmeal = Recipe(
            recipeName: "Oatmeal",
            recipeDescription: "Cinnamon and Apples Oatmeal",
            prepTime: "15",
            cookTime: "10",
            servings: "1")
        let pbandj = Recipe(
            recipeName: "PB & J",
            recipeDescription: "Peanut Butter and Jelly Sandwich",
            prepTime: "15",
            cookTime: "10",
            servings: "1")
        
        return [cereal,oatmeal,pbandj]
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}


