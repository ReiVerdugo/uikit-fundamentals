//
//  ViewController.swift
//  PresentModally
//
//  Created by Reinaldo Verdugo on 4/10/16.
//  Copyright © 2016 Reinaldo Verdugo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func experiment(_ sender: AnyObject) {
        let viewC = UIImagePickerController()
        self.present(viewC, animated: true, completion: nil)
        
    }
    
    @IBAction func showActivityView(_ sender: AnyObject) {
        let controller = UIActivityViewController(activityItems: [UIImage()], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func showAlertView(_ sender: AnyObject) {
        let controller = UIAlertController()
        controller.title = "Alert view"
        controller.message = "This is a test"
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: {action in self.dismiss(animated: true, completion: nil)})
        controller.addAction(okAction)
        self.present(controller, animated: true, completion: nil)
    }
    
    

}

