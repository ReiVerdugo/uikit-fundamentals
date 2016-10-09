//
//  LockableFieldDelegate.swift
//  ChallengeTextfieldApp
//
//  Created by Reinaldo Verdugo on 9/10/16.
//  Copyright © 2016 Reinaldo Verdugo. All rights reserved.
//

import UIKit

class LockableFieldDelegate: NSObject, UITextFieldDelegate {
    var shouldEdit = false
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return shouldEdit
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return shouldEdit
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}
