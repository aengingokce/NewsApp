//
//  UIView+.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 25.01.2022.
//

import UIKit

extension UIView {
    static func viewForTableViewHeader(subtitle: String) -> UIView {
        let screenRect = UIScreen.main.bounds
        let subtitleView = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.size.width, height: 44)))
        let subtitleLabel = UILabel(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.width, height: 44)))
        subtitleLabel.text = subtitle
        subtitleLabel.textAlignment = .center
        subtitleLabel.textColor = .gray
        subtitleView.addSubview(subtitleLabel)
        return subtitleView
    }
}
