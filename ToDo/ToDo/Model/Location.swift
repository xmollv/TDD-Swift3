//
//  Location.swift
//  ToDo
//
//  Created by Xavi Moll on 26/02/2017.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
    
}
