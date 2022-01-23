//
//  Article.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 23.01.2022.
//

import Foundation

// MARK: - NewsSource
struct NewsSources: Decodable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable {
    let title: String
    let description: String
    let url: String
    let imageUrl: String?

    enum CodingKeys: String, CodingKey {
        case title, description, url
        case imageUrl = "urlToImage"
    }
}

// MARK: - Extension for Article
extension Article {
    static func by(category: String) -> Resource<[Article]> {
        return Resource<[Article]>(url: URL.urlForTopHeadlines(for: category)) { data in
            return try? JSONDecoder().decode(NewsSources.self, from: data).articles 
        }
    }
}
