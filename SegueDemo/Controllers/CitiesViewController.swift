//
//  CitiesViewController.swift
//  SegueDemo
//
//  Created by Noura Abdualaziz on 21/05/2020.
//  Copyright © 2020 Noura Abdualaziz. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController {

    // Outlet
    @IBOutlet weak var tableView: UITableView!
    
    // Variables
    var cities = ["Riyadh", "Jeddah", "Dammam"]
    var newCity = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // Update data in first view controller
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if  newCity != "" {
            cities.append(newCity)
            tableView.reloadData()
            newCity = ""
        }
        
    }
    
    @IBAction func unwind(_ unwindSegue: UIStoryboardSegue) {
        
    }

}

extension CitiesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = cities[indexPath.row]
        
        return cell!
    }
}
