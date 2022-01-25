//
//  NewsDetailsVC.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 25.01.2022.
//

import UIKit
import WebKit

class NewsDetailsVC: UIViewController {
    
    var article: Article!
    var newDetailsVM: NewsDetailsViewModel!
    
    @IBOutlet weak var webView: WKWebView!
    
}

