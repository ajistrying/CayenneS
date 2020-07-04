//
//  CreateARecipeView.swift
//  CayenneS
//
//  Created by Wellington Johnson on 6/27/20.
//  Copyright © 2020 Wellington Johnson. All rights reserved.
//

import SwiftUI

struct CreateARecipeView: View {
    
    static let DefaultRecipeName = "Tasty Meal"
    static let DefaultRecipeDescription = "Tasty meal made easy!"
    static let DefaultPrepTime = "5"
    static let DefaultCookTime = "5"
    static let DefaultServing = "1"
    
    @State var recipeName: String = ""
    @State var recipeDescription: String = ""
    @State var prepTime: String = ""
    @State var cookTime: String = ""
    @State var servings: String = ""
    let onComplete: (String, String, String, String, String) -> Void
    
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    Section(header: Text("Recipe Name").font(.headline))
                    {
                        HStack{
                            TextField("Name of recipe", text: $recipeName)
                            Button("Done"){UIApplication.shared.endEditing()}
                        }
                        
                    }
                    
                    Section(header: Text("Recipe Description").font(.headline))
                    {
                        
                        HStack{
                            TextField("Short recipe description", text: $recipeDescription)
                            Button("Done"){UIApplication.shared.endEditing()}
                        }
                    }
                    
                    Section(header: Text("Cook and Prep Time").font(.headline))
                    {
                        HStack{
                            TextField("Prep Time", text: $prepTime).keyboardType(.numberPad)
                            Button("Done"){UIApplication.shared.endEditing()}
                        }
                        
                        HStack{
                            TextField("Cook Time", text: $cookTime).keyboardType(.numberPad)
                            Button("Done"){UIApplication.shared.endEditing()}
                        }
                        
                    }
                    
                    Section(header: Text("Servings").font(.headline))
                    {
                        HStack{
                            TextField("Servings", text: $servings)
                                .keyboardType(.numberPad)
                            Button("Done"){UIApplication.shared.endEditing()}
                        }
                        
                    }
                    
                }
                Button(action: addRecipeAction ) {
                    HStack{
                        Text("Create")
                            .font(.title)
                            .frame(height: 60)
                        Image(systemName: "chevron.right.circle")
                            .font(.title)
                            .frame(height: 60)
                    }
                }
            }
            .navigationBarTitle("Add Recipe")
        }
    }
    
    private func addRecipeAction(){
        onComplete(
            recipeName.isEmpty ? CreateARecipeView.DefaultRecipeName : recipeName,
            recipeDescription.isEmpty ? CreateARecipeView.DefaultRecipeDescription : recipeDescription,
            prepTime.isEmpty ? CreateARecipeView.DefaultPrepTime : recipeDescription,
            cookTime.isEmpty ? CreateARecipeView.DefaultCookTime : recipeDescription,
            servings.isEmpty ? CreateARecipeView.DefaultServing : recipeDescription
        )
    }
    
    
}
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
