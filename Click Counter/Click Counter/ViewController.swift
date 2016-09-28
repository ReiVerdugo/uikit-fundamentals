//
//  ViewController.swift
//  Click Counter
//
//  Created by devstn5 on 2016-09-28.
//  Copyright © 2016 Rverdugo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label : UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        let label = UILabel()
        label.frame = CGRect(x: Int(view.center.x), y: Int(view.center.y), width: 60, height: 60)
        label.textAlignment = .center
        label.center.x = view.center.x
        label.center.y = view.center.y
        label.text = "0"
        self.label = label
        view.addSubview(label)
        
        // Increment button
        let button = UIButton()
        button.frame = CGRect(x: Int(view.center.x), y: Int(view.center.y) + 40, width: 70, height: 60)
        button.center.x = view.center.x - 50
        button.center.y = view.center.y + 40
        button.setTitle("Up", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        view.addSubview(button)
        
        // Decrement button
        let button2 = UIButton()
        button2.frame = CGRect(x: Int(view.center.x), y: Int(view.center.y) + 40, width: 70, height: 60)
        button2.center.x = view.center.x + 50
        button2.center.y = button.center.y
        button2.setTitle("Down", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: .touchUpInside)
        view.addSubview(button2)
        
        // Change background color button
        let button3 = UIButton()
        button3.frame = CGRect(x: Int(view.center.x), y: Int(view.center.y) + 40, width: 70, height: 60)
        button3.center.x = view.center.x
        button3.center.y = button.center.y + 50
        button3.setTitle("Color!", for: .normal)
        button3.setTitleColor(UIColor.blue, for: .normal)
        button3.addTarget(self, action: #selector(ViewController.changeColor), for: .touchUpInside)
        view.addSubview(button3)
    }
    
    func incrementCount () {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    func decrementCount () {
        self.count -= 1
        self.label.text = "\(self.count)"
    }
    
    func changeColor () {
        self.view.backgroundColor = getRandomColor()
    }
    
    
    func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }


}

