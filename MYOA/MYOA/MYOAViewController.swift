//
//  MYOAViewController.swift
//  MYOA
//
//  Created by Reinaldo Verdugo on 24/10/16.
//  Copyright © 2016 Reinaldo Verdugo. All rights reserved.
//

import UIKit

class MYOAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Star Over", style: .plain, target: self, action: #selector(MYOAViewController.startOver))
    }

    func startOver () {
        if let navigationController = self.navigationController {
            navigationController.popToRootViewController(animated: true)
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
