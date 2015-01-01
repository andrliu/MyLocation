//
//  LocationCell.swift
//  MyLocation
//
//  Created by Andrew Liu on 12/30/14.
//  Copyright (c) 2014 Andrew Liu. All rights reserved.
//

import UIKit

class LocationCell: UITableViewCell
{

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    func configureForLocation(location: Location)
    {
        if location.locationDescription.isEmpty
        {
            descriptionLabel.text = "(No Description)"
        }
        else
        {
            descriptionLabel.text = location.locationDescription
        }
        if let placemark = location.placemark
        {
            addressLabel.text = "\(placemark.subThoroughfare) \(placemark.thoroughfare)," + "\(placemark.locality)"
        }
        else
        {
            addressLabel.text = String(format: "Lat: %.8f, Long: %.8f", location.latitude, location.longitude)
        }
        photoImageView.image = imageForLocation(location)
    }
    
    func imageForLocation(location: Location) -> UIImage
    {
        if location.hasPhoto
        {
            if let image = location.photoImage
            {
                return image.resizedImageWithBounds(CGSize(width: 52, height: 52))
            }
        }
        return UIImage()
    }
}
