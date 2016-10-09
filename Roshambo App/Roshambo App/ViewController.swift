//
//  ViewController.swift
//  Roshambo App
//
//  Created by Reinaldo Verdugo on 8/10/16.
//  Copyright © 2016 Reinaldo Verdugo. All rights reserved.
//

import UIKit

enum Move : Int {
    case Rock = 0
    case Paper
    case Scissors
}

class ViewController: UIViewController {
    
    func generateRandomMove () -> Move {
        let value = Int(arc4random_uniform(3))
        return Move(rawValue: value)!
    }

    
    @IBAction func rockAction(_ sender: AnyObject) {
        let nextController = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        nextController.playerMove = .Rock
        nextController.opponentMove = generateRandomMove()
        present(nextController, animated: true, completion: nil)
    }

    @IBAction func paperAction(_ sender: AnyObject) {
        performSegue(withIdentifier: "paperAction", sender: self)
    }
    
   
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextController = segue.destination as! SecondViewController
        nextController.opponentMove = generateRandomMove()
        if segue.identifier == "paperAction" {
            nextController.playerMove = .Paper
        } else if segue.identifier == "scissorsAction" {
            nextController.playerMove = .Scissors
        }
     }
    



}

