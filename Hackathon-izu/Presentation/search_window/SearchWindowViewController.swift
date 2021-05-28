//
//  SearchWindowViewController.swift
//  Hackathon-izu
//
//  Created by kakuta.naoki on 2021/05/28.
//

import UIKit
import WebKit
import FloatingPanel

final class SearchWindowViewController: UIViewController, FloatingPanelLayout {
    let position: FloatingPanelPosition = .bottom
    let initialState: FloatingPanelState = .tip
    var anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring] {
        return [
            .full: FloatingPanelLayoutAnchor(fractionalInset: 0.9, edge: .bottom, referenceGuide: .safeArea),
            .half: FloatingPanelLayoutAnchor(fractionalInset: 0.5, edge: .bottom, referenceGuide: .safeArea),
            .tip: FloatingPanelLayoutAnchor(fractionalInset: 0.1, edge: .bottom, referenceGuide: .safeArea),
        ]
    }
    
    private lazy var googleMapScraper = GoogleMapScraper()
    
    @IBOutlet private weak var webView: WKWebView!
    
    @IBAction func run() {
        googleMapScraper.scrape(keyword: "伊豆 観光", webView: webView)
    }
}
