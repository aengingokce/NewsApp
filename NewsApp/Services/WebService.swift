//
//  WebService.swift
//  NewsApp
//
//  Created by Ahmet Engin Gökçe on 23.01.2022.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

class WebService {
    
    func load<T>(resource: Resource<T>, comp: @escaping (T?) -> ()) {
        URLSession.shared.dataTask(with: resource.url) { data, response, err in
            if let err = err {
                debugPrint(err.localizedDescription)
                comp(nil)
            }
            if let data = data {
                DispatchQueue.main.async {
                    comp(resource.parse(data))
                }
            }
        }.resume()
    }
}
