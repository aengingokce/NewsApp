//
//  CategoryService.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 23.01.2022.
//

import Foundation

class CategoryService {
    
    func getAllArticlesforeachCategory(comp: @escaping ([Category]) -> ()) {
        var categories = [Category]()
        var requestCount = 0
        let categoryCount = Category.allCategories().count
        Category.allCategories().forEach { category in
            WebService().load(resource: Article.by(category: category)) { articles in
                requestCount += 1
                guard let articles = articles else {
                    return
                }
                let category = Category(title: category, articles: articles)
                categories.append(category)
                if requestCount == categoryCount {
                    comp(categories)
                }
            }
        }
    }
}
