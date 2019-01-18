//
//  ViewController.swift
//  PickerViewSwift
//
//  Created by MACOS on 5/29/17.
//  Copyright © 2017 MACOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{

    @IBOutlet weak var txt: UITextField!
    
    
    
    var arr = [String]();
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arr=["Asp.Net","iPhone","Android","Java","Designing"]
        
        //pickr.isHidden=false;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return arr.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return arr[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        txt.text=arr[row];
    }


}

