//
//  VillanDetailViewController.swift
//  BondVillains
//
//  Created by Reinaldo Verdugo on 26/10/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit

class VillanDetailViewController: UIViewController {

    @IBOutlet weak var villainImage: UIImageView!
    @IBOutlet weak var villainLabel: UILabel!
    var villain : Villain? = nil
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        villainImage.image = UIImage(named: (villain?.imageName)!)
        villainLabel.text = villain?.name
    }

}
