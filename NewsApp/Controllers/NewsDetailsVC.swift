//
//  NewsDetailsVC.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 25.01.2022.
//

import UIKit
import WebKit

class NewsDetailsVC: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var article: Article!
    var newDetailsVM: NewsDetailsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    func setUI() {
        self.newDetailsVM = NewsDetailsViewModel(article: article)
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = self.newDetailsVM.sourceName
        guard let url = self.newDetailsVM.url,
              let newsDetailUrl = URL(string: url) else { return }
        let request = URLRequest(url: newsDetailUrl)
        self.webView.load(request)
    }
}

