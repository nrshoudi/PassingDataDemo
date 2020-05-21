//
//  Style.swift
//  SegueDemo
//
//  Created by Noura Abdualaziz on 21/05/2020.
//  Copyright © 2020 Noura Abdualaziz. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController {

func hideKeyboardWhenTappedAround() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
    tap.cancelsTouchesInView = false
    view.addGestureRecognizer(tap)
}

@objc func dismissKeyboard() {
    view.endEditing(true)
}
}
