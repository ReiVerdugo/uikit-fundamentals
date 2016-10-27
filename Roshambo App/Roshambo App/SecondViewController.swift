//
//  SecondViewController.swift
//  Roshambo App
//
//  Created by Reinaldo Verdugo on 8/10/16.
//  Copyright © 2016 Reinaldo Verdugo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var playerMove : Move? = nil
    var opponentMove : Move? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verifyResult()
    }
    
    @IBAction func playAgain(_ sender: AnyObject) {
//        dismiss(animated: true, completion: nil)
        if let navigationController = self.navigationController {
            navigationController.popToRootViewController(animated: true)
        }
    }
    
    func verifyResult () {
        var resultString = ""
        switch (playerMove!,opponentMove!) {
        case (.Rock, .Paper), (.Paper, .Rock):
            imageView.image = #imageLiteral(resourceName: "PaperCoversRock.jpg")
            resultString = "Paper covers rock. "
            if playerMove! == .Paper {
                resultString += "You win!"
            } else {
                resultString += "You lose :("
            }
        case (.Rock, .Scissors), (.Scissors, .Rock):
            imageView.image = #imageLiteral(resourceName: "RockCrushesScissors.jpeg")
            resultString = "Rock crushes scissors. "
            if playerMove! == .Rock {
                resultString += "You win!"
            } else {
                resultString += "You lose :("
            }
            
        case (.Scissors, .Paper), (.Paper, .Scissors):
            imageView.image = #imageLiteral(resourceName: "ScissorsCutPaper.jpg")
            resultString = "Scissors cut paper. "
            if playerMove! == .Scissors {
                resultString += "You win!"
            } else {
                resultString += "You lose :("
            }
        
        case let (a,b) where a==b:
            imageView.image = #imageLiteral(resourceName: "itsATie.png")
            resultString = "It's a tie!"
        
        default:
            break
        }
        resultLabel.text = resultString
    }
}
