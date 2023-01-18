//
//  ContentView.swift
//  AndrewsCookery
//
//  Created by Andrew L Perkins on 1/15/23.
//

import SwiftUI

struct RecipesListView: View {
    @StateObject var recipeData = RecipeData()

    var body: some View {
        NavigationView {
            List {
                ForEach(recipes) { recipe in
                    Text(recipe.mainInformation.name)
                }
            }
            .navigationTitle(navigationTitle)
        }
    }
}

extension RecipesListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView()
    }
}
