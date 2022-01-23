//
//  URL+.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 23.01.2022.
//

import Foundation

extension URL {
    static func urlForTopHeadlines(for category: String) -> URL {
        return URL(string: "https://newsapi.org/v2/top-headlines?category=\(category)&country=tr&apiKey=58c10f9cb6164d4c9be1ef1822b6cca3")!
    }
}
