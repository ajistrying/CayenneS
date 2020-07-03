//
//  AddIngredientsView.swift
//  CayenneS
//
//  Created by Wellington Johnson on 7/2/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct AddIngredientsView: View {
    var ingredients: Int
    var includeInstructions: Bool
    
    var body: some View {
        NavigationView {
            Text(String(ingredients))
            if includeInstructions {
                Text("Hello World")
            }
         
        }
    .navigationBarTitle(Text("Add Ingredients"))
    }
}

struct AddIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredientsView(ingredients: 0, includeInstructions: false)
    }
}
