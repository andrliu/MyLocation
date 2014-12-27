//
//  LocationDetailsViewController.swift
//  MyLocation
//
//  Created by Andrew Liu on 12/26/14.
//  Copyright (c) 2014 Andrew Liu. All rights reserved.
//

import UIKit
class LocationDetailsViewController: UITableViewController
{
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func done()
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancel()
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
