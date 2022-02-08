//
//  Recipe.swift
//  module04
//
//  Created by Lucas Nguyen on 07/02/2022.
//

import Foundation
class Recipe:Decodable, Identifiable {
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
    
}
