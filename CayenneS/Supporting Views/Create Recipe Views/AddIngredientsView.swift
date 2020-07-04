//
//  AddIngredientsView.swift
//  CayenneS
//
//  Created by Wellington Johnson on 7/2/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct AddIngredientsView: View {
    var ingredients: Int = 0
    @State var ingredientList: [String] = []
    
    var body: some View {
        NavigationView {
            List{
                Text("Hi")
                Text("Hi")
                Text("Hi")
            }
        }
        .navigationBarTitle(Text("Add Ingredients"))
    }
}

struct AddIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredientsView()
    }
}
