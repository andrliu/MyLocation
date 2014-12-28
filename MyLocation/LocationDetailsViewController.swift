//
//  LocationDetailsViewController.swift
//  MyLocation
//
//  Created by Andrew Liu on 12/26/14.
//  Copyright (c) 2014 Andrew Liu. All rights reserved.
//

import UIKit
import CoreLocation

private let dateFormatter: NSDateFormatter =
{
    let formatter = NSDateFormatter()
    formatter.dateStyle = .MediumStyle
    formatter.timeStyle = .ShortStyle
    return formatter
}()

class LocationDetailsViewController: UITableViewController
{
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    var coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    var placemark: CLPlacemark?
    
    @IBAction func done()
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancel()
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        descriptionTextView.text = ""
        categoryLabel.text = ""
        latitudeLabel.text = String(format: "%.8f", coordinate.latitude)
        longitudeLabel.text = String(format: "%.8f", coordinate.longitude)
        if let placemark = placemark
        {
            addressLabel.text = stringFromPlacemark(placemark)
        }
        else
        {
            addressLabel.text = "No Address Found"
        }
        dateLabel.text = formatDate(NSDate())
    }
    
    func stringFromPlacemark(placemark: CLPlacemark) -> String
    {
        return "\(placemark.subThoroughfare) \(placemark.thoroughfare), " + "\(placemark.locality), " + "\(placemark.administrativeArea) \(placemark.postalCode)," + "\(placemark.country)"
    }
    
    func formatDate(date: NSDate) -> String
    {
        return dateFormatter.stringFromDate(date)
    }
}
