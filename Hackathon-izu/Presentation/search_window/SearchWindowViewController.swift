//
//  SearchWindowViewController.swift
//  Hackathon-izu
//
//  Created by kakuta.naoki on 2021/05/28.
//

import UIKit
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

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
