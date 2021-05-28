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
    private var browser: Erik!
    
    init(webView: WKWebView) {
        browser = Erik(webView: webView)
    }
    
    func scrape(keyword: String) -> ([Spot], Error?) {
        let result: [Spot] = []
        let error: Error? = nil

        browser.layoutEngine.browse(url: url) { document, error in
            guard let html = document as? String, let doc = try? self.browser.htmlParser.parse(html, encoding: .utf8) else { return }
        }

        return (result, error)
    }
}
