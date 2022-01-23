//
//  Category.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 23.01.2022.
//

import Foundation

struct Category {
    let title: String
    let articles: [Article]
}

extension Category {
    static func allCategories() -> [String] {
        return ["business", "entertainment", "general", "health", "science", "sports", "technology"]
    }
}


