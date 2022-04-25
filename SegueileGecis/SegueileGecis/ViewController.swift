//
//  ViewController.swift
//  SegueileGecis
//
//  Created by batuhan on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sayfaGecis(_ sender: Any) {
        performSegue(withIdentifier: "gecis", sender: nil)
    }
    
    @IBAction func identifier(_ sender: UIButton) {
        let gecis = UIStoryboard(name: "Main", bundle: nil)
        let VC = storyboard?.instantiateViewController(withIdentifier:"VC2" )
        present(VC!, animated: true)
    }
    
}

