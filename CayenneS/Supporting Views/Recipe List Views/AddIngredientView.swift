//
//  AddIngredientsView.swift
//  CayenneS
//
//  Created by Wellington Johnson on 7/2/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct AddIngredientView: View {
    static let DefaultIngredientItem = "Tasty Ingredient"
    static let DefaultMeasurementAmount = "1"
    static let DefaultMeasurement = "Cup"
    
    
    @State var ingredientItem: String = ""
    @State var measurementAmount: String = ""
    @State var measurement: String = ""
    
    let onComplete: (String,String,String) -> Void
    
    var measurements = ["cup","fluid ounce","gallon","ounce","pint","pound","quart","tablespoon","teaspoon"]
    @State private var selectedMeasurementIndex = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Ingredient")){
                        TextField("Ingredient Name", text: $ingredientItem)
                    }
                    Section(header:Text("Measurement")){
                        TextField("Measurement Amount",text: $measurementAmount).keyboardType(.numberPad)
                        Picker(selection: $selectedMeasurementIndex, label: Text("Measurement")) {
                            ForEach(0..<measurements.count) {
                                Text(self.measurements[$0].capitalized)
                            }
                        }
                    }
                }
                Button(action:{} ){
                    Text("Add")
                        .font(.title)
                        .frame(height: 70)
                }
            }
            .navigationBarTitle("Add Ingredient")
        }
        
    }
}
