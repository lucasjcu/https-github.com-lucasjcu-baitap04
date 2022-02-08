//
//  RecipeModel.swift
//  module04
//
//  Created by Lucas Nguyen on 07/02/2022.
//

import Foundation
class RecipeModel: ObservableObject {
   @Published var recipes = [Recipe]()
    init(){
        self.recipes = DataService().getLocalData()
    }
}
