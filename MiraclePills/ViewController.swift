//
//  ViewController.swift
//  MiraclePills
//
//  Created by Alwin Lazar on 09/01/17.
//  Copyright © 2017 Xeoscript Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var miraclePillImage: UIImageView!
    @IBOutlet weak var miraclePillLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameText: UITextField!
    @IBOutlet weak var streetaddrlabel: UILabel!
    @IBOutlet weak var streetAddrText: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var buyNowBtn: UIImageView!
    @IBOutlet weak var successBtn: UIImageView!
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeText: UITextField!
    
    let states = ["Alappuzha", "Ernakulam", "Idukki", "Kannur", "Kasaragod", "Kollam", "Kottayam", "Kozhikode", "Malappuram", "Palakkad", "Pathanamthitta", "Thiruvananthapuram", "Thrissur", "Wayanad"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Button is clicked event is take place
    @IBAction func stateBtnPressed(_ sender: Any) {
        
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeText.isHidden = true
        
        //to show the pickerView
        statePicker.isHidden = false
    }
    
    // This sets the number of columns topickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // This sets the number of rows topickerView
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    // This sets the title to PickerView
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // This function to detect which row is selected from the pickerView
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipCodeText.isHidden = false
        zipCodeLabel.isHidden = false
        countryText.isHidden = false
        countryLabel.isHidden = false
    }

    @IBAction func buyNowPressed(_ sender: Any) {
//        miraclePillImage.isHidden = true
//        miraclePillLabel.isHidden = true
//        
//        priceLabel.isHidden = true
//        dividerView.isHidden = true
//        
//        fullNameLabel.isHidden = true
//        fullNameText.isHidden = true
//        
//        streetaddrlabel.isHidden = true
//        streetAddrText.isHidden = true
//        
//        cityLabel.isHidden = true
//        cityText.isHidden = true
//        
//        stateLabel.isHidden = true
//        statePickerBtn.isHidden = true
//        
//        countryLabel.isHidden = true
//        countryText.isHidden = true
//        
//        zipCodeLabel.isHidden = true
//        zipCodeText.isHidden = true
//        
//        buyNowBtn.isHidden = true
        
        // Like a pro
        for v in self.view.subviews {
            v.isHidden = true
        }
        
        // unhide the success image
        successBtn.isHidden = false
        
        
    }
}

