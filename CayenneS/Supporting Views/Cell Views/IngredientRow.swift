//
//  IngredientRow.swift
//  CayenneS
//
//  Created by Wellington Johnson on 7/4/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct IngredientRow: View {
    var ingredient: Ingredient
    
    var body: some View {
        HStack{
            Spacer()
            Text(String(ingredient.measureAmount))
            Text(ingredient.measurement)
            Text(ingredient.ingredientItem)
            Spacer()
        }
    }
}

struct IngredientRow_Previews: PreviewProvider {
    static var previews: some View {
        IngredientRow(ingredient: Ingredient(ingredientItem: "Cinnamon Apple Oatmeal", measureAmount: "2", measurement: "Cups"))
            .previewLayout(.fixed(width: 415, height: 50))
    }
}
