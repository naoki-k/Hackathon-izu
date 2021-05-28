//
//  GoogleMap.swift
//  Hackathon-izu
//
//  Created by kakuta.naoki on 2021/05/28.
//

import Foundation
import Erik

class GoogleMapScraper {
    let url = URL(string: "https://www.google.co.jp/maps")!
    
    func scrape(keyword: String) -> ([Spot], Error?) {
        let result: [Spot] = []
        let error: Error? = nil

        Erik.visit(url: url) { object, error in
            guard error == nil, let doc = object else { return }
            
        }

        return (result, error)
    }
}
