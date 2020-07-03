//
//  CreateARecipeView.swift
//  CayenneS
//
//  Created by Wellington Johnson on 6/27/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct CreateARecipeView: View {
    
    @State private var recipeName: String = ""
    @State private var recipeDescription = ""
    @State private var prepTime: String = ""
    @State private var cookTime: String = ""
    @State private var ingredients: Int32 = 0
    @State private var servings: Int32 = 0
    @State private var includeInstructions: Bool = false
    
    
    var body: some View {
        NavigationView {
            
            VStack{
                Form {
                    
                    Section(header: Text("Recipe Name"))
                    {
                        TextField("Name of recipe", text: $recipeName)
                    }
                    
                    Section(header: Text("Recipe Description"))
                    {
                        TextField("Short recipe description", text: $recipeDescription)
                    }
                    
                    Section(header: Text("Cook and Prep Time"))
                    {
                        TextField("Prep Time", text: $prepTime)
                        TextField("Cook Time", text: $cookTime)
                    }
                    
                    Section(header: Text("Ingredients"))
                    {
                        Stepper("\(ingredients)", value: $ingredients, in: 1...20)
                    }
                    
                    Section(header: Text("Servings"))
                    {
                        Stepper("\(servings)", value: $servings, in: 1...20)
                    }
                    
                    Toggle(isOn: $includeInstructions)
                    {
                        Text("Include Instructions?")
                    }
                }
               
                NavigationLink(destination: AddIngredientsView(ingredients: Int(ingredients),includeInstructions: includeInstructions)) {
                    Text("Add Ingredients")
                        .font(.headline)
                        .frame(height: 60)
                        Image(systemName: "chevron.right.circle").font(.title)
                        .frame(height: 60)
                }
                
            }
            .navigationBarTitle("Create a recipe")
            
        }
    }
}

struct CreateARecipeView_Previews: PreviewProvider {
    static var previews: some View {
        CreateARecipeView()
    }
}
