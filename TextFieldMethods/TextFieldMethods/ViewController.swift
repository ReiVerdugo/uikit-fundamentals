//
//  ViewController.swift
//  TextFieldMethods
//
//  Created by Reinaldo Verdugo on 9/10/16.
//  Copyright © 2016 Reinaldo Verdugo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        textField.becomeFirstResponder()
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Should begin editing")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Did begin editing")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("Should end editing")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Did end editing")
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("Clear")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Should return")
        self.view.endEditing(true)
        return true
    }

}

