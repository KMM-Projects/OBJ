//
//  ViewController.swift
//  OBJPreview
//
//  Created by Patrik Kemeny on 1/7/17.
//  Copyright © 2017 Patrik Kemeny. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    
    //@IBOutlet weak var objPicker: UIPickerView!
    
    
    @IBOutlet weak var infolabel: UILabel!
    @IBOutlet weak var elementPicker: UIPickerView!
    
    let object = DrawObject(number: 1)
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        elementPicker.dataSource = self
        elementPicker.delegate = self
        object.loadFile()
        infolabel.text = object.arrayOfFaces[9].getInfo()
 
        
    }
    
    
    @IBAction func segmentBtnPressed(_ sender: Any) {
    }
    
    
    
  
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return object.arrayOfFaces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return object.arrayOfFaces[row].getInfo()
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //what happens when you select a row
        infolabel.text = object.arrayOfFaces[row].getInfo()
        elementPicker.isHidden = true
    }

}

