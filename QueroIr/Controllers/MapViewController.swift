//
//  MapViewController.swift
//  QueroIr
//
//  Created by Felipe Almeida on 24/01/21.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var viewInfo: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showRoute(_ sender: UIButton) {
        
    }
    @IBAction func showSearchBar(_ sender: UISearchBar) {
    }
    
}
