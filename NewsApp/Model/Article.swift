//
//  Article.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 23.01.2022.
//

import Foundation

// MARK: - NewsSource
struct NewsSource: Decodable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable {
    let title: String
    let description: String
    let url: String
    let imageUrl: String

    enum CodingKeys: String, CodingKey {
        case title, description, url
        case imageUrl = "urlToImage"
    }
}
