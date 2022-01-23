//
//  NewsListTVC.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 22.01.2022.
//

import UIKit

class NewsListTVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        
        CategoryService().getAllArticlesforeachCategory { category in
            print(category)
        }
    }
    
    func setUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}

