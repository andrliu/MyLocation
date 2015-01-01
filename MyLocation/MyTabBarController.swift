//
//  MyTabBarController.swift
//  MyLocation
//
//  Created by Andrew Liu on 12/31/14.
//  Copyright (c) 2014 Andrew Liu. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController
{
    override func preferredStatusBarStyle() -> UIStatusBarStyle
    {
        return .LightContent
    }
    
    override func childViewControllerForStatusBarStyle() -> UIViewController?
    {
            return nil
    }
}
