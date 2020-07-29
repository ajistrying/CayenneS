//
//  Recipe.swift
//  CayenneS
//
//  Created by Wellington Johnson on 7/3/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import Foundation

struct Recipe {
    let recipeName: String
    let recipeDescription: String
    let prepTime: String
    let cookTime: String
    let servings: String
    let ingredients: [Ingredient] = []
    let directions: [Direction] = []
    //let nutrition: Nutrition
    
}
