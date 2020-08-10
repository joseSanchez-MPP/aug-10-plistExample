//
//  ViewController.swift
//  PListDataExample
//
//  Created by jose sanchez on 8/10/20.
//  Copyright © 2020 jose sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TextBox: UITextField!
    @IBOutlet var mainSwitch: UISwitch!
    @IBOutlet var mainSlider: UISlider!
    
    @IBAction func onSaveButtonPressed(_ sender: Any) {
        UserDefaults.standard.set(TextBox.text, forKey: "textBox")
        UserDefaults.standard.set(mainSlider.value, forKey: "mainSlider")
        UserDefaults.standard.set(mainSwitch.isOn, forKey: "mainSwitch")
    }
    
    @IBAction func onLoadButtonPressed(_ sender: Any) {
        TextBox.text = UserDefaults.standard.string(forKey: "textBox")
        mainSlider.value = UserDefaults.standard.float(forKey: "mainSlider")
        mainSwitch.isOn = UserDefaults.standard.bool(forKey: "mainSwitch")
    }
    
    @IBAction func onDeleteButtonPressed(_ sender: Any) {
        mainSwitch.isOn = true
        mainSlider.value = 0.5
        TextBox.text = "Hello World!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

