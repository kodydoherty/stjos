//
//  SecondViewController.swift
//  stjos
//
//  Created by Samuel Doherty on 3/17/15.
//  Copyright (c) 2015 stjos. All rights reserved.
//

import UIKit

class TuitionViewController: UIViewController {

    @IBOutlet weak var yearlyFee: UILabel!

    @IBOutlet weak var additionalFee: UILabel!
    @IBOutlet weak var totalFee: UILabel!
    
    var childCount = 1
    var isCatholic = true
    var yearFee = 0
    var addFees = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yearlyFee.text = "$\(0)"
        // Do any additional setup after loading the view, typically from a nib.
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberOfChildren(sender: UISegmentedControl) {
        var index = sender.selectedSegmentIndex
        childCount = index + 1
        updateLabels()
    }

    @IBAction func catholic(sender: UISegmentedControl) {
        var index = sender.selectedSegmentIndex
        isCatholic = index == 0 ? true : false
        updateLabels()
        
    }
    
    func updateLabels() {
        
        if isCatholic {
            switch childCount {
                case 1:
                    yearFee = 5988
                
                case 2:
                    yearFee = 9900
                
                case 3:
                    yearFee = 13500
                
                default:
                    yearFee = 16938
            }
        } else {
            switch childCount {
            case 1:
                yearFee = 8280
                
            case 2:
                yearFee = 16560
                
            case 3:
                yearFee = 24840
                
            default:
                yearFee = 33120
            }
        }
        
        addFees = (childCount * 300) + 200
        additionalFee.text = "$\(addFees)"
        
        yearlyFee.text = "$\(yearFee)"
        var total = yearFee + addFees
        
        totalFee.text = "$\(total)"
    }
}

