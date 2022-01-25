//
//  NewsListCell.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 22.01.2022.
//

import Foundation
import UIKit

class NewsListCell: UITableViewCell {
    
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var headlineImageView: UIImageView!

}

extension NewsListCell {
    func configure(vm: ArticleViewModel) {
        self.headlineLabel.text = vm.title
        self.descriptionLabel.text = vm.description
        vm.image { self.headlineImageView.image = $0 }
    }
}
