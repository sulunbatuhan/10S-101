//
//  ViewController.swift
//  PickerController
//
//  Created by batuhan on 15.03.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
   
   
    var gunler : [String] = ["Pazartesi","salı","çarşamba","perşembe","cuma","cumartesi","pazar"]

    var sayi : [String] = ["1","2","3","4","5","6","7"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gunler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return gunler[row]
        }else{
            return sayi[row]
        }
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    

}

