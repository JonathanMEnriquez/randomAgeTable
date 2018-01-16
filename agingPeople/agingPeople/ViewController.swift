//
//  ViewController.swift
//  agingPeople
//
//  Created by user on 1/15/18.
//  Copyright © 2018 jon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let namesArray = ["Jon", "Laura", "Kathy", "Jose", "Oscar", "Rebecca", "Lorena", "Enrique", "Matt", "Paul", "Tim", "Amos"]
    
    @IBOutlet var namesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        namesTableView.delegate = self
        namesTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Delegate and Data Source Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = namesTableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        cell.textLabel?.text = namesArray[indexPath.row]
        
        let random = arc4random_uniform(91) + 5
        
        cell.detailTextLabel?.text = "\(random) years old"
        cell.detailTextLabel?.textAlignment = NSTextAlignment.right
        
        return cell
    }
}

