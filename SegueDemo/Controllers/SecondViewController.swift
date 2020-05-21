//
//  SecondViewController.swift
//  SegueDemo
//
//  Created by Noura Abdualaziz on 21/05/2020.
//  Copyright © 2020 Noura Abdualaziz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // Outlet
    @IBOutlet weak var nameLabel: UILabel!
    
    // Variables
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
    }
    

}
