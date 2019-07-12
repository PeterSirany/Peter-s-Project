//
//  TemporaryMenu.swift
//  Peter's Project
//
//  Created by Peter Sirany on 7/10/19.
//  Copyright © 2019 Peter Sirany. All rights reserved.
//

import UIKit

enum LeftSideMenuItems: Int, CustomStringConvertible {
    
    case ViewOne
    case ViewTwo
    case ViewThree
    case ViewFour
    case ViewFive
    
    var description: String {
        switch self {
        case .ViewOne: return "View 1"
        case .ViewTwo: return "View 2"
        case .ViewThree: return "View 3"
        case .ViewFour: return "View 4"
        case .ViewFive: return "View 5"
        }
    }
}
