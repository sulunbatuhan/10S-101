//
//  ViewController.swift
//  UserDefaultsTheme
//
//  Created by batuhan on 23.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var Dark: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        themeSettings()
    }

   
    @IBAction func DarkMode(_ sender: UISwitch) {
        if sender.isOn {
            theme(Value: "A")
            themeSettings()
            lbl.textColor = .white
        }else {
            theme(Value: "B")
            themeSettings()
            lbl.textColor = .black
        }
        
    }
    
    
    func theme(Value : String){
        let userDefault = UserDefaults.standard
        userDefault.set(Value, forKey: "tema")
        userDefault.synchronize()
    }
    
    func themeSettings(){
        if UserDefaults.standard.string(forKey: "tema") == "A"{
            self.view.backgroundColor = .black
            
        }else {
            self.view.backgroundColor = .white
            
        }
    }
}

