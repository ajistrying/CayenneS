//
//  RecipeDirectionsView.swift
//  CayenneS
//
//  Created by Wellington Johnson on 7/7/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct RecipeDirectionsView: View {
    
    @State var recipeDirections = RecipeDirectionsView.makeDirections()
    
    var body: some View {
        Text("Directions")
    }
    
   static func makeDirections() -> [Direction]{
        let direction1 = Direction(directionText: "Add 1 cup of oatmeal to a bowl", ingredientsIncluded: [Ingredient(ingredientItem: "Cinnamon Oatmeal", measureAmount: "1", measurement: "Cup")])
        let direction2 = Direction(directionText: "Some other ingredient that needs to be added in a certain way whooppee this a very long direction text to format", ingredientsIncluded: [Ingredient(ingredientItem: "Water", measureAmount: "6", measurement: "Tablespoon")])
        let direction3 = Direction(directionText: "Some other ingredient that needs to be added in a certain way whooppee this a very long direction text to format", ingredientsIncluded: [Ingredient(ingredientItem: "Water", measureAmount: "6", measurement: "Tablespoon")])
        return [direction1, direction2, direction3]
    }
    
}



struct RecipeDirectionsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDirectionsView()
    }
}
