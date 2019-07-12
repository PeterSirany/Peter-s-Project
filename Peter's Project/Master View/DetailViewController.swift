//
//  DetailViewController.swift
//  Peter's Project
//
//  Created by Peter Sirany on 7/10/19.
//  Copyright © 2019 Peter Sirany. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    
    // MARK: - Properties
    var delegate: DetailControllerDelegate! // see protocol in Utilities folder
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Handlers
    @IBAction func toggleLeftSideBar(_sender: UIButton) {
        
        // Top left icon button - click to open / close left side bar
        // The delegate is not set properly so this function is not working
        
        delegate?.handleSideBarToggle()
    }
    
}


