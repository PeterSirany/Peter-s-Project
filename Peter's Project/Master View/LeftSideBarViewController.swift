//
//  LeftSideBarViewController.swift
//  Peter's Project
//
//  Created by Peter Sirany on 7/10/19.
//  Copyright © 2019 Peter Sirany. All rights reserved.
//

import UIKit

class LeftSideBarViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITabBarDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet weak var leftSideBarMainTableview: UITableView!
    @IBOutlet weak var leftSideBarTabBar: UITabBar!
    
    // MARK: - Properties
    var delegate: DetailControllerDelegate!
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Handlers
    
    
    // MARK: - Left Side Bar TableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 3 Prototype custom cells functionality goes here
        
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "Cell")
        return cell
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
