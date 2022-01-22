//
//  NewsListTVC.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 22.01.2022.
//

import UIKit

class NewsListTVC: UITableViewController {
    
    let news = [
        ["title": "description"],
        ["title title": "description title title title title title title title title"],
        ["title":"description title title title title title title title title title title title title title title title title title title"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    func setUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsListCell") as? NewsListCell else { return UITableViewCell() }
        cell.headlineLabel.text = news[indexPath.row]["title"]
        cell.descriptionLabel.text = news[indexPath.row]["description"]
        return cell
    }
}

