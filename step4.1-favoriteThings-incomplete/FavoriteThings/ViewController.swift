//
//  ViewController.swift
//  FavoriteThings
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Model
    
    let favoriteThings: [String] = [
        "Netflix and Chill with the couple",
        "Sweet condensed milk",
        "Pasta",
        "Money"
    ]

    // MARK: Table View Data Source Methods
    
    // number of rows
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteThings.count
    }

    
    // cell for row at index path
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      
      let cell = tableView.dequeueReusableCellWithIdentifier("FavoriteThingCell")
        cell?.textLabel?.text = favoriteThings[indexPath.row]
        return cell!
    }
}

