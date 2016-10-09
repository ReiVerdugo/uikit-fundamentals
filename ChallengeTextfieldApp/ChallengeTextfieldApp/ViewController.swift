//
//  ViewController.swift
//  ChallengeTextfieldApp
//
//  Created by Reinaldo Verdugo on 9/10/16.
//  Copyright © 2016 Reinaldo Verdugo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var zipcodeField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var lockableField: UITextField!
    
    
    var zipcodeFieldDelegate = ZipCodeFieldDelegate()
    var lockableFieldDelegate = LockableFieldDelegate()
    var cashFieldDelegate = CashFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zipcodeField.delegate = zipcodeFieldDelegate
        lockableField.delegate = lockableFieldDelegate
        cashField.delegate = cashFieldDelegate
    }
    
    @IBAction func switched(_ sender: UISwitch) {
        lockableFieldDelegate.shouldEdit = sender.isOn
    }
    


}

