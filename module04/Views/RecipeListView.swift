//
//  ContentView.swift
//  module04
//
//  Created by Lucas Nguyen on 07/02/2022.
//

import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        NavigationView {
            List(model.recipes) { m in
                
                NavigationLink(destination: RecipeDetailView(recipe: m), label: {
                    
                    HStack {
                        Image(m.image)
                            .resizable()
                            .scaledToFill()
                        .frame(width: 60, height: 60, alignment: .center)
                        .clipped()
                        Text(m.name)

                    }
                    
                })
                
                
                
                
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
