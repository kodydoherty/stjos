//
//  FirstViewController.swift
//  stjos
//
//  Created by Samuel Doherty on 3/17/15.
//  Copyright (c) 2015 stjos. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let color = UIColor(red: 105/255.0, green: 167/255.0, blue: 184/255.0, alpha: 1.0)
        tabBarController!.tabBar.barTintColor = color
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

