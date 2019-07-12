//
//  ViewFourViewController.swift
//  Peter's Project
//
//  Created by Peter Sirany on 6/28/19.
//  Copyright © 2019 Peter Sirany. All rights reserved.
//

import UIKit

class ViewFourViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var containerToggleButton: UIButton!
    @IBOutlet weak var viewFourContainer: UIView!
    
    
    // MARK: - Properties
    var containerVisible = true
    
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Handlers
    @IBAction func toggleContainerButton(_ sender: Any) {
        toggleContainer()
    }
    
    //Container Logic
    func toggleContainer(){
        if(containerVisible) {
            self.viewFourContainer.fadeOut()
            containerToggleButton.setTitle("Show Container", for: .normal)
        } else {
            self.viewFourContainer.fadeIn()
            containerToggleButton.setTitle("Hide Container", for: .normal)
        }
        containerVisible.toggle()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
