//
//  RecipeCategoryView.swift
//  AndrewsCookery
//
//  Created by Andrew L Perkins on 1/20/23.
//

import SwiftUI

struct RecipeCategoryGridView: View {
    private var recipeData = RecipeData()
    
    var body: some View {
        let columns = [ GridItem(), GridItem() ]
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(MainInformation.Category.allCases,
                            id: \.self) { category in
                        NavigationLink(
                            destination: RecipesListView(category: category)
                                .environmentObject(recipeData),
                            label: {
                                CategoryView(category: category)
                            }
                        )
                    }
                })
                .navigationTitle("Categories")
            }
        }
    }
}

struct CategoryView: View {
    let category: MainInformation.Category
    
    var body: some View {
        ZStack {
            Image(category.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.35)
            Text(category.rawValue)
                .font(.title)
        }
    }
}

struct RecipeCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryGridView()
    }
}
