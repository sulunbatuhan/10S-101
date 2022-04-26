//
//  ViewController.swift
//  Background
//
//  Created by batuhan on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Background: UIImageView!
    
   
    var basilanTap = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
       
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(ArkaPlanDegistir(_:)))
        
        
        Background.isUserInteractionEnabled = true
        Background.addGestureRecognizer(gesture)
        
        
        
        
    }

    
    @objc func ArkaPlanDegistir(_ gestureRecognizer : UITapGestureRecognizer){
        
        var sayi = Int.random(in: 1...5)
        switch sayi {
        case 1 :
            Background.backgroundColor = .black
        case 2 :
            Background.backgroundColor = .green
        case 3 :
            Background.backgroundColor = .blue
        case 4 :
            Background.backgroundColor = .yellow
        case 5 :
            Background.backgroundColor = .red
            
        default:
            Background.backgroundColor = .purple}
        }

}

