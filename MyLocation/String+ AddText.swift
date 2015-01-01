//
//  String+ AddText.swift
//  MyLocation
//
//  Created by Andrew Liu on 12/31/14.
//  Copyright (c) 2014 Andrew Liu. All rights reserved.
//

import Foundation

extension String
{
    mutating func addText(text: String?, withSeparator separator: String = " ") {
        if let text = text
        {
            if !isEmpty
            {
                self += separator
            }
            self += text
        }
    }
}