//
//  DetailView.swift
//  module04
//
//  Created by Lucas Nguyen on 07/02/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    var body: some View {
        ScrollView{
            Image(recipe.image)
                .resizable()
            .scaledToFit()
            VStack {
                
                Text("Giới thiệu")
                Text(recipe.description)
                Text("Thành phần")
                ForEach(recipe.ingredients, id: \.self) { i in
                    Text(i)
                }
            }
            
        }
            
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
