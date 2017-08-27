//
//  ViewController.swift
//  mirakle-pills
//
//  Created by Damian on 27.08.2017.
//  Copyright © 2017 Damian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    

    @IBOutlet weak var pickBtnChosen: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    let states = ["Zachodniopomorskie","Mazowieckie", "Dolnośląskie", "Pomorskie", "Lubuskie", "Śląskie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    @IBAction func pickBtn(_ sender: Any) {
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickBtnChosen.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
    

}

