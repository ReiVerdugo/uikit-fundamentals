//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Reinaldo Verdugo on 24/10/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var history = [RPSMatch]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("historyCell")
        let historyItem = history[indexPath.row]
        // If it's not a tie
        if historyItem.p1.description != historyItem.p2.description {
            if historyItem.winner == historyItem.p1 {
                cell?.textLabel!.text = "Win!"
            } else {
                cell?.textLabel!.text = "Loss."
            }
            
        // It's a tie
        } else {
            cell?.textLabel!.text = "Tie"
        }
        
        cell?.detailTextLabel!.text = "\(historyItem.p1.description) vs \(historyItem.p2.description)"
        return cell!
    }

}
