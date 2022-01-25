//
//  Date+.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 25.01.2022.
//

import UIKit

extension Date {
    static func dateAsStringForTableViewHeader() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd"
        return formatter.string(from: Date())
    }
}
