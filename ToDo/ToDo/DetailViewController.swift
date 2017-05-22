//
//  DetailViewController.swift
//  ToDo
//
//  Created by Xavi Moll on 22/05/2017.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var mapView: MKMapView!
    
    var itemInfo: (ItemManager, Int)?
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let itemInfo = itemInfo else { return }
        let item = itemInfo.0.item(at: itemInfo.1)
        
        titleLabel.text = item.title
        locationLabel.text = item.location?.name
        descriptionLabel.text = item.itemDescription
        
        
        if let timestamp = item.timestamp {
            let date = Date(timeIntervalSince1970: timestamp)
            dateLabel.text = dateFormatter.string(from: date)
        }
        
        
        if let coordinate = item.location?.coordinate {
            let region = MKCoordinateRegionMakeWithDistance(coordinate,
                                                            100, 100)
            mapView.region = region 
        }
    }
}
