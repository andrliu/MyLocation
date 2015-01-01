//
//  UIImage+Resize.swift
//  MyLocation
//
//  Created by Andrew Liu on 12/31/14.
//  Copyright (c) 2014 Andrew Liu. All rights reserved.
//

import UIKit

extension UIImage
{
    func resizedImageWithBounds(bounds: CGSize) -> UIImage
    {
        let horizontalRatio = bounds.width / size.width
        let verticalRatio = bounds.height / size.height
        let ratio = min(horizontalRatio, verticalRatio)
        let newSize = CGSize(width: size.width * ratio, height: size.height * ratio)
        UIGraphicsBeginImageContextWithOptions(newSize, true, 0)
        drawInRect(CGRect(origin: CGPoint.zeroPoint, size: newSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
}
