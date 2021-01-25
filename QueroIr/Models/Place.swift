//
//  Place.swift
//  QueroIr
//
//  Created by Felipe Almeida on 25/01/21.
//

import Foundation
import CoreLocation


struct Place {
    var name: String
    var lat: CLLocationDegrees
    var long: CLLocationDegrees
    var address: String
    
    var coordinate : CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake(lat, long)
    }
    
    static func getFormattedAddress(placemark: CLPlacemark) -> String {
        var address:String = ""
        
        if let street = placemark.thoroughfare {
            address += street
        }
        if let number = placemark.subThoroughfare {
            address += " \(number)"
        }
        if let subLocality = placemark.subLocality {
            address += ", \(subLocality)"
        }
        if let city = placemark.locality {
            address += "\n\(city)"
        }
        if let state = placemark.administrativeArea {
            address += " - \(state)"
        }
        if let postalCode = placemark.postalCode {
            address += "\nCEP: \(postalCode)"
        }
        if let country = placemark.country {
            address += "\n\(country)"
        }
        return address
    }
}
