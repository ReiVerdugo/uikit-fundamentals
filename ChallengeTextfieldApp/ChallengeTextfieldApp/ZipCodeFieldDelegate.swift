//
//  ZipCodeFieldDelegate.swift
//  ChallengeTextfieldApp
//
//  Created by Reinaldo Verdugo on 9/10/16.
//  Copyright © 2016 Reinaldo Verdugo. All rights reserved.
//

import UIKit

class ZipCodeFieldDelegate: NSObject, UITextFieldDelegate {
    
    // Limits the textfield length to 5 characters
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentCharacterCount = textField.text?.characters.count ?? 0
        if (range.length + range.location > currentCharacterCount){
            return false
        }
        let newLength = currentCharacterCount + string.characters.count - range.length
        return newLength <= 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}
