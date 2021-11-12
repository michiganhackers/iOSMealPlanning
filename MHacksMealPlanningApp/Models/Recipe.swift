//
//  Recipe.swift
//  MHacksMealPlanningApp
//
//  Created by Thomas Smith on 11/11/21.
//

import Foundation

class Recipe {
    let name: String
    let ingredients: [Ingredient]
    
    init(name: String, ingredients: [Ingredient]) {
        self.name = name
        self.ingredients = ingredients
    }
}
