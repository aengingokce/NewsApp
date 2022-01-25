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
    let sourceName: String
    
    enum ArticleKeys: String, CodingKey {
        case title, description, url
        case imageUrl = "urlToImage"
        case source
    }
    
    enum SourceKeys: String, CodingKey {
        case name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ArticleKeys.self)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
        self.url = try container.decode(String.self, forKey: .url)
        self.imageUrl = try? container.decode(String.self, forKey: .imageUrl)
        
        let sourceContainer = try container.nestedContainer(keyedBy: SourceKeys.self, forKey: .source)
        self.sourceName = try sourceContainer.decode(String.self, forKey: .name)
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
