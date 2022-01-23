//
//  ArticleViewModel.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 23.01.2022.
//

import UIKit

struct ArticleViewModel {
    private(set) var article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    var description: String? {
        return self.article.description
    }
    
    func image(comp: @escaping (UIImage?) -> ()) {
        guard let imageUrl = article.imageUrl else {
            comp(nil)
            return
        }
        UIImage.imageForArticles(url: imageUrl) { image in
            DispatchQueue.main.async {
                comp(image)
            }
        }
    }
}
