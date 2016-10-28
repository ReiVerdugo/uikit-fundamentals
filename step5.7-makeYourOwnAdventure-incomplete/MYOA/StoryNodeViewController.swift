//
//  StoryNodeViewController.swift
//  MYOA
//
//  Created by Jarrod Parkes on 11/2/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - StoryNodeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource

class StoryNodeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Properties
    
    var storyNode: StoryNode!

    // MARK: Outlets
    
    @IBOutlet weak var adventureImageView: UIImageView!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var restartButton: UIButton!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Set the image
        if let imageName = storyNode.imageName {
            self.adventureImageView.image = UIImage(named: imageName)
        }
        
        // Set the message text
        self.messageTextView.text = storyNode.message
        
        // Hide the restart button if there are choices to be made
        restartButton.hidden = storyNode.promptCount() > 0
    }
    
    // MARK: Table Placeholder Implementation
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let newStoryNode = storyNode.storyNodeForIndex(indexPath.row)
        let nextController = self.storyboard?.instantiateViewControllerWithIdentifier("StoryNodeViewController")as! StoryNodeViewController
        nextController.storyNode = newStoryNode
        self.navigationController?.pushViewController(nextController, animated: true)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storyNode.promptCount()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! 

        cell.textLabel!.text = storyNode.promptForIndex(indexPath.row)
        return cell
    }
    
    // MARK: Actions
    
    @IBAction func restartStory() {
        let controller = self.navigationController!.viewControllers[1] 
        self.navigationController?.popToViewController(controller, animated: true)
    }
}
