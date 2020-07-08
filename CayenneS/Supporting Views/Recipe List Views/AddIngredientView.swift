//
//  AddIngredientsView.swift
//  CayenneS
//
//  Created by Wellington Johnson on 7/2/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct AddIngredientView: View {
    @State var ingredientItem = ""
    @State var measurementAmount = ""
    var measurements = ["cup","fluid ounce","gallon","ounce","pint","pound","quart","tablespoon","teaspoon"]
    @State private var selectedMeasurementIndex = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Ingredient Name", text: $ingredientItem)
                    TextField("Measurement Amount",text: $measurementAmount).keyboardType(.numberPad)
                    Picker(selection: $selectedMeasurementIndex, label: Text("Measurement")) {
                        ForEach(0..<measurements.count) {
                            Text(self.measurements[$0].capitalized)
                        }
                    }
                }
            }
        }
        .navigationBarTitle(Text("Add Ingredients"))
    }
}

struct AddIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredientView()
    }
}
