//
//  RecipeDetail.swift
//  CayenneS
//
//  Created by Wellington Johnson on 7/4/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI



struct RecipeDetail: View {
    
    var recipe: Recipe
    var body: some View {
        VStack{
            Text(recipe.recipeName)
            Text(recipe.recipeDescription)
        }
        .navigationBarTitle(Text(recipe.recipeName), displayMode: .inline)
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetail(recipe: Recipe(recipeName: "Example", recipeDescription: "Example Description", prepTime: "10", cookTime: "10", servings: "1"))
    }
}
