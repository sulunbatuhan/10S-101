//
//  ViewController.swift
//  Stepper
//
//  Created by batuhan on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblmetin: UILabel!
    var sayi : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func stepper(_ sender: UIStepper) {
        
        sayi = sender.value
        lblmetin.text = "\(sayi)"
        sender.maximumValue = 10
    }
    

}

