//
//  GoogleMap.swift
//  Hackathon-izu
//
//  Created by kakuta.naoki on 2021/05/28.
//

import Foundation
import WebKit
import Erik

class GoogleMapScraper {
    let url = URL(string: "https://www.google.co.jp/maps")!
    
    func scrape(keyword: String, webView: WKWebView? = nil) -> ([Spot], Error?) {
        let result: [Spot] = []
        let error: Error? = nil

        let browser = Erik(webView: webView)
        browser.layoutEngine.browse(url: url) { (document, error) in
            
        }

        return (result, error)
    }
}
