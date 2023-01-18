//
//  RecipeData.swift
//  AndrewsCookery
//
//  Created by Andrew L Perkins on 1/18/23.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
