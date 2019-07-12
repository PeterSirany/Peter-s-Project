//
//  ViewController.swift
//  Peter's Project
//
//  Created by Peter Sirany on 6/28/19.
//  Copyright © 2019 Peter Sirany. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var masterContainer: UIView!
    
    // MARK: - Properties
    var isShown = false
    var selectedController: UIViewController!
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    override var prefersStatusBarHidden: Bool {
        return false // isShown
    }
    
    // MARK: - Handlers
    func animatePanel(shouldExpand: Bool, menuSelection: LeftSideMenuItems?) {
        
        if shouldExpand {
            // show left side bar
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.masterContainer.frame.origin.x = self.masterContainer.frame.width - 330
            }, completion: nil)
            
        } else {
            // hide left side bar
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.masterContainer.frame.origin.x = 0
            }) { (_) in
                guard let menuSelection = menuSelection else { return }
                self.didSelectMenuOption(menuSelection: menuSelection)
            }
        }
        
        animateStatusBar()
    }

    func didSelectMenuOption(menuSelection: LeftSideMenuItems) {
        switch menuSelection {
        case .ViewOne:
            selectedController = ViewOneViewController()
            print("Show View 1")
        case .ViewTwo:
            selectedController = ViewTwoViewController()
            print("Show View 2")
        case .ViewThree:
            selectedController = ViewThreeViewController()
            print("Show View 3")
        case .ViewFour:
            selectedController = ViewFourViewController()
            print("Show View 4")
        case .ViewFive:
            selectedController = ViewFiveViewController()
            print("Show View 5")
        }
        
        // Add a call here to present the menu selected view controller in the detail view.
        // do not dismiss or close the left side bar, the only call to dismiss is via the DetailViewController "hamburger" bugtton
    
    }

    
    func animateStatusBar() {
        // Status Bar - Considering the effect on the iPhone vs. iPad.
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.setNeedsStatusBarAppearanceUpdate()
        }, completion: nil)
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


    // MARK: - Extensions

extension MasterViewController: DetailControllerDelegate {
    func handleSideBarToggle() {
        
        // set delegate properly to call this function when the DetailViewController "hamburger" button is pressed.
        // call function to animate the left side bar open / closed
        
        print("Toggle has been received:")
    }

}



