//
//  Sercive.swift
//  module04
//
//  Created by Lucas Nguyen on 07/02/2022.
//

import Foundation
class DataService {
    func getLocalData() -> [Recipe] {
        let path = Bundle.main.path(forResource: "data", ofType: "json")
        guard path != nil else {
            return [Recipe]()
        }
        let url = URL(fileURLWithPath: path!)
        do {
            let data = try Data(contentsOf: url)
            let decorder = JSONDecoder()
            do {
                let recipeData = try decorder.decode([Recipe].self, from: data)
                for r in recipeData{
                    r.id = UUID()
                }
                return recipeData

            }
            catch {
                print(error)
            }

        }
        catch{
            print(error)
        }
        return [Recipe]()
    }
}
