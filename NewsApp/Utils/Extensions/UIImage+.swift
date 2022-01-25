//
//  UIImage+.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 24.01.2022.
//

import UIKit

extension UIImage {
    
    static func imageForPlaceHolder() -> UIImage {
        return UIImage(named: "placeholder.png")!
    }
    
    static func imageForArticles(url: String, comp: @escaping (UIImage) -> ()) {
        guard let imageUrl = URL(string: url) else {
            comp(UIImage.imageForPlaceHolder())
            return
        }
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: imageUrl) {
                if let downloadImage = UIImage(data: data) {
                    comp(downloadImage)
                }
            }
        }
    }
}
