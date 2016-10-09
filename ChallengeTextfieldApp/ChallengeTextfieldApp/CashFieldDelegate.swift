//
//  cashFieldDelegate.swift
//  ChallengeTextfieldApp
//
//  Created by Reinaldo Verdugo on 9/10/16.
//  Copyright © 2016 Reinaldo Verdugo. All rights reserved.
//

import UIKit
import Foundation

class CashFieldDelegate: NSObject, UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let oldText = textField.text! as NSString
        var newText = oldText.replacingCharacters(in: range, with: string)
        var newTextString = String(newText)
        
        let digits = NSCharacterSet.decimalDigits
        var digitText = ""
        for c in (newTextString!.unicodeScalars) {
            if digits.contains(c) {
                digitText.append(String(c))
            }
        }
        
        // Format the new string
        if let numOfPennies = Int(digitText) {
            newText = "$" + self.dollarStringFromInt(value: numOfPennies) + "." + self.centsStringFromInt(value: numOfPennies)
        } else {
            newText = "$0.00"
        }
        
        textField.text = newText
        
        return false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text!.isEmpty {
            textField.text = "$0.00"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    func dollarStringFromInt(value: Int) -> String {
        return String(value / 100)
    }
    
    func centsStringFromInt(value: Int) -> String {
        
        let cents = value % 100
        var centsString = String(cents)
        
        if cents < 10 {
            centsString = "0" + centsString
        }
        
        return centsString
    }
}
