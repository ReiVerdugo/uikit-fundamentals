//
//  ViewControllerWithStoryboard.swift
//  Click Counter
//
//  Created by devstn5 on 2016-09-28.
//  Copyright © 2016 Rverdugo. All rights reserved.
//

import UIKit

class ViewControllerWithStoryboard: UIViewController {
    @IBOutlet var label : UILabel!
    @IBOutlet var button: UIButton!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func incrementCount () {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    
}
