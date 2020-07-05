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
    @State var ingredients: [Ingredient] = RecipeDetail.makeIngredients()
    var body: some View {
        VStack {
            Image("pizza-placeholder")
                .resizable()
                .frame(width: 400, height: 325)
                .cornerRadius(100)
            
            VStack {
                
                Text(recipe.recipeName).font(.largeTitle)
                Text(recipe.recipeDescription).font(.headline).multilineTextAlignment(.center)
                
                HStack{
                    Text("Prep Time: \(recipe.prepTime)")
                    Text("Cook Time: \(recipe.cookTime)")
                    Text("Servings: \(recipe.servings)")
                }
            }
            Divider()
            VStack{
                VStack(alignment: .leading){
                    List{
                        ForEach(ingredients,id: \.ingredientItem){ ingredient in
                            HStack {
                                Text(String(ingredient.measureAmount))
                                Text(String(ingredient.measurement))
                                Text(ingredient.ingredientItem)
                            }
                        }
                    }
                    
                    
                }
                Button(action:{})
                {
                    Text("Add Ingredient")
                    Image(systemName: "plus")
                }
            }
            Spacer()
            
            
        }
        .navigationBarTitle(Text(recipe.recipeName), displayMode: .inline)
    }
    
    static func makeIngredients() -> [Ingredient]{
        let milk = Ingredient(ingredientItem: "Milk", measureAmount: 1, measurement: "Cup")
        let oatmeal = Ingredient(ingredientItem: "Cinnamon Apple Oatmeal", measureAmount: 1, measurement: "Packet")
        let peanutButter = Ingredient(ingredientItem: "Peanut Butter", measureAmount: 1, measurement: "Tablespoon")
        
        return [milk, oatmeal, peanutButter]
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            RecipeDetail(recipe: Recipe(recipeName: "Example", recipeDescription: "Example Description", prepTime: "10", cookTime: "10", servings: "1"))
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
            
            RecipeDetail(recipe: Recipe(recipeName: "Example", recipeDescription: "Example Description", prepTime: "10", cookTime: "10", servings: "1"))
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
                .previewDisplayName("iPhone 11 Pro")
        }
        
        
    }
    
}
