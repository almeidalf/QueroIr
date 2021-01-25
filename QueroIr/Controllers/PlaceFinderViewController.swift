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
    
    func load(show: Bool) {
        activityIndicatorLoading.isHidden = !show
        if show {
            activityIndicatorLoading.startAnimating()
        } else {
            activityIndicatorLoading.stopAnimating()
        }
    }

    
    @IBAction func findCity(_ sender: UIButton) {
        txtCity.resignFirstResponder()
        guard let address = txtCity.text else { return }
        load(show: true)
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(address) { (placemarks, error) in
            self.load(show: false)
            guard let placemark = placemarks?.first else { return }
            print(Place.getFormattedAddress(placemark: placemark))
        }
    }
    
    @IBAction func closeModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
