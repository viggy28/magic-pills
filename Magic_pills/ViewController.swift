//
//  ViewController.swift
//  Magic_pills
//
//  Created by Vignesh Ravichandran on 1/6/17.
//  Copyright © 2017 Vignesh Ravichandran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var StatePicker: UIPickerView!
    
    @IBOutlet weak var StatePickerBtn: UIButton!
    
    @IBOutlet weak var CountryLbl: UILabel!
    
    @IBOutlet weak var CountryTxt: UITextField!
    
    @IBOutlet weak var ZipLbl: UILabel!
    @IBOutlet weak var ZipTxt: UITextField!
    
   
    
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var NameTxt: UITextField!
    
    @IBOutlet weak var StreetLbl: UILabel!
  
    @IBOutlet weak var StreetTxt: UITextField!
    
    @IBOutlet weak var CityLbl: UILabel!
    
    @IBOutlet weak var CityTxt: UITextField!
    
    @IBOutlet weak var StateLbl: UILabel!
    @IBOutlet weak var BuyBtn: UIButton!
    
    @IBOutlet weak var AmountLbl: UILabel!
    
    
    @IBOutlet weak var SuccessImg: UIImageView!
    
    let states = ["Arkansas","california","Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StatePicker.dataSource = self
        StatePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StateBtnPressed(_ sender: Any) {
        StatePicker.isHidden=false
        CountryLbl.isHidden = true
        CountryTxt.isHidden = true
        ZipLbl.isHidden = true
        ZipTxt.isHidden = true
        
        
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
        StatePickerBtn.setTitle(states[row], for: UIControlState.normal)
        StatePicker.isHidden = true
        CountryLbl.isHidden = false
        CountryTxt.isHidden = false
        ZipLbl.isHidden = false
        ZipTxt.isHidden = false
        
    }
   
    @IBAction func BuyBtnPressed(_ sender: Any) {
        NameTxt.isHidden = true
        NameLbl.isHidden = true
        StreetLbl.isHidden = true
        StreetTxt.isHidden = true
        CityLbl.isHidden = true
        CityTxt.isHidden = true
        StateLbl.isHidden = true
        StatePickerBtn.isHidden = true
        StatePicker.isHidden = true
        CountryLbl.isHidden = true
        CountryTxt.isHidden = true
        ZipLbl.isHidden = true
        ZipTxt.isHidden = true
        AmountLbl.isHidden = true
        SuccessImg.isHidden = false
    }
   
    
}

