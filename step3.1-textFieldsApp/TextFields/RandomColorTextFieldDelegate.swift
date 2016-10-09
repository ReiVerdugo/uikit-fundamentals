//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Reinaldo Verdugo on 9/10/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    func createRandomColor () -> UIColor {
        let randomRed = CGFloat(drand48())
        let randomGreen = CGFloat(drand48())
        let randomBlue = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = createRandomColor()
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
}
