//
//  NewsListTVC.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 22.01.2022.
//

import UIKit

class NewsListTVC: UITableViewController {
    
    private var categoryListViewModel: CategoryListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        getArticles()
    }
    
    func getArticles() {
        CategoryService().getAllArticlesforeachCategory { [weak self] category in
            self?.categoryListViewModel = CategoryListViewModel(categories: category)
            self?.tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let name = self.categoryListViewModel.categoryAtIndex(index: section).name
        return UIView.viewForSectionHeader(title: name)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.categoryListViewModel == nil ? 0 : self.categoryListViewModel.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoryListViewModel.numberOfRowsInSection(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsListCell", for: indexPath) as? NewsListCell else { return UITableViewCell() }
        let articleVM = self.categoryListViewModel.categoryAtIndex(index: indexPath.section).articleAtIndex(indexPath.row)
        cell.configure(vm: articleVM)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return self.categoryListViewModel.heightForHeaderInSection(section)
    }
    
    func setUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.tableView.tableHeaderView = UIView.viewForTableViewHeader(subtitle: Date.dateAsStringForTableViewHeader())
    }
    
}

