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
                
                Text(recipe.recipeName).font(.title)
                
                HStack{
                    Text("Prep Time: \(recipe.prepTime)")
                    Text("Cook Time: \(recipe.cookTime)")
                    Text("Servings: \(recipe.servings)")
                }
                
                HStack{
                    Spacer()
                    Button(action:{}){Text("Nutrition").font(.title)}
                    Spacer()
                    Button(action:{}){Text("Directions").font(.title)}
                    Spacer()
                }
                
                
            }
            Divider()
            VStack{
                VStack(alignment: .leading){
                    List{
                        ForEach(ingredients,id: \.ingredientItem){ ingredient in
                            HStack {
                                IngredientRow(ingredient: ingredient)
                            }
                        }
                    }
                }
                Button(action:{})
                {
                    Text("Add Ingredient")
                    Image(systemName: "plus")
                }
                Spacer()
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
        }
        
        
    }
    
}
