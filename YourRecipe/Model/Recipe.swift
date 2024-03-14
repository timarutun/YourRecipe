//
//  Recipe.swift
//  YourRecipe
//
//  Created by Timur on 3/14/24.
//

import Foundation

class Recipie {
    let id: Int
    let title: String
    let image: String
    let missedIngredientCount: Int
    let usedIngredientCount: Int
    init(id: Int, title: String, image: String, missedIngredientCount: Int, likes: Int, usedIngredientCount: Int) {
        self.id = id
        self.title = title
        self.image = image
        self.missedIngredientCount = missedIngredientCount
        self.usedIngredientCount = usedIngredientCount
    }
}
