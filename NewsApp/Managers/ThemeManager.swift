//
//  ThemeManager.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 22.01.2022.
//

import Foundation
import UIKit

class ThemeManager {
    
    static func setUI() {
        UINavigationBar.appearance().barTintColor = UIColor.systemGray
        //UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}
