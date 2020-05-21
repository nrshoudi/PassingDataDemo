//
//  NewCityViewController.swift
//  SegueDemo
//
//  Created by Noura Abdualaziz on 21/05/2020.
//  Copyright © 2020 Noura Abdualaziz. All rights reserved.
//

import UIKit

class NewCityViewController: UIViewController {

    @IBOutlet weak var cityTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // To hide keyboard on when tapping anywhere
        hideKeyboardWhenTappedAround()
    }
    
    // Pass data -backward- from the second view controller to the first view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let firstVC = segue.destination as? CitiesViewController  {
            firstVC.newCity = cityTextField.text ?? ""
        }
    }

}
