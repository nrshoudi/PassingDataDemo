//
//  FirstViewController.swift
//  SegueDemo
//
//  Created by Noura Abdualaziz on 21/05/2020.
//  Copyright © 2020 Noura Abdualaziz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // To hide keyboard on when tapping anywhere
        hideKeyboardWhenTappedAround()
        
    }
    
    // Fuction in the first view class
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // To pass name data to second view class
        if segue.identifier == "segue_id" {
            let secondVC = segue.destination as? SecondViewController // second view class
            secondVC?.name = textField.text // update data in second view class
        }
    }
    
    @IBAction func goButtonAction(_ sender: Any) {
        // Call this function inside button action.
        performSegue(withIdentifier: "segue_id", sender: nil)
    }
    
}
