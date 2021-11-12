//
//  Backend.swift
//  MHacksMealPlanningApp
//
//  Created by Thomas Smith on 11/11/21.
//

import Foundation

class Backend {
    static let instance = Backend()

    func search(query: String, callback: ([Recipe]) -> ()) {
        print("Search for " + query)
        callback([
            Recipe(name: "Pizza", ingredients: [Ingredient(name: "Tomato sauce"), Ingredient(name: "Cheese"), Ingredient(name: "Dough")]),
            Recipe(name: "Fried chicken", ingredients: [Ingredient(name: "Oil"), Ingredient(name: "Raw chicken")])
        ])
    }
}
