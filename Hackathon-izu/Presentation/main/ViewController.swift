//
//  ViewController.swift
//  Hackathon-izu
//
//  Created by kakuta.naoki on 2021/05/24.
//

import UIKit
import MapKit
import CoreLocation
import FloatingPanel

final class ViewController: UIViewController {
    @IBOutlet private weak var map: MKMapView!
    private lazy var locationManager = CLLocationManager()
    
    private lazy var floatingPanelController = FloatingPanelController()
    private var floatingPanel: SearchWindowViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self

        floatingPanel = UIStoryboard(name: "SearchWindow", bundle: nil).instantiateInitialViewController() as? SearchWindowViewController

        floatingPanelController.delegate = self
        floatingPanelController.layout = floatingPanel
        floatingPanelController.set(contentViewController: floatingPanel)
        floatingPanelController.addPanel(toParent: self)
    }
}

extension ViewController: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
        case .restricted, .denied:
            break
        case .authorizedAlways, .authorizedWhenInUse:
            manager.startUpdatingLocation()
            break
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let coordinate = locations.last?.coordinate {
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            map.region = region
        }
    }
}


extension ViewController: FloatingPanelControllerDelegate {
    func floatingPanelWillBeginDragging(_ vc: FloatingPanelController) {
//            if vc.position == .full {
//                searchVC.searchBar.showsCancelButton = false
//                searchVC.searchBar.resignFirstResponder()
//            }
        }

        func floatingPanelWillEndDragging(_ vc: FloatingPanelController, withVelocity velocity: CGPoint, targetState: UnsafeMutablePointer<FloatingPanelState>) {
//            if targetState.pointee != .full {
//                searchVC.hideHeader()
//            }
        }
}
