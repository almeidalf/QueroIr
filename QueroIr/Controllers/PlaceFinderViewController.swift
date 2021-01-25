//
//  PlaceFinderViewController.swift
//  QueroIr
//
//  Created by Felipe Almeida on 24/01/21.
//

import UIKit
import MapKit

class PlaceFinderViewController: UIViewController {
    
    let cornerRadiusNumber: CGFloat = 8.0
    
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var buttonEscolher: UIButton!
    @IBOutlet weak var activityIndicatorLoading: UIActivityIndicatorView!
    @IBOutlet weak var viewLoading: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    private func setupView(){
        txtCity.layer.cornerRadius = cornerRadiusNumber
        buttonEscolher.layer.cornerRadius = cornerRadiusNumber
    }

    
    @IBAction func findCity(_ sender: Any) {
        
    }
    
    @IBAction func closeModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
