//
//  IngredientCell.swift
//  CayenneS
//
//  Created by Wellington Johnson on 6/27/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct RecipeRow: View {
    var recipe: Recipe!
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(recipe.recipeName).font(.headline)
            HStack {
                Text("Cook Time: \(recipe.cookTime)")
                Text("Prep Time: \(recipe.prepTime)")
                Text("Servings: \(recipe.servings)")
            }.font(.subheadline)
        }
    }
}

struct RecipeRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRow(recipe: Recipe(recipeName: "Oatmeal", recipeDescription: "Nice smooth cinnamon apple oatmeal!", prepTime: "10", cookTime: "15", servings: "3")).previewLayout(.fixed(width: 300, height: 100))
    }
}
