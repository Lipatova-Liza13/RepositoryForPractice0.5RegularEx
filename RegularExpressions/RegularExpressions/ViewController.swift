//
//  ViewController.swift
//  RegularExpressions
//
//  Created by Teslenko Anastasiya on 12.08.2020.
//  Copyright © 2020 Liza Lipatova. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var labelTask1: UILabel!
    @IBOutlet weak var labelTask2: UILabel!
    @IBOutlet weak var labelTask3: UILabel!
    @IBOutlet weak var labelTask4: UILabel!
    @IBOutlet weak var textAnswer1: UITextField!
    @IBOutlet weak var textAnswer2: UITextField!
    @IBOutlet weak var textAnswer3: UITextField!
    @IBOutlet weak var textAnswer4: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //textAnswer1.delegate = self
        //textAnswer2.delegate = self
        //textAnswer3.delegate = self
        //textAnswer4.delegate = self
        labelTask1.text = "Your phone number"
        labelTask2.text = "Your name and surname"
        labelTask3.text = "Your date of birth"
        labelTask4.text = "Your gmail post"
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true

    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textAnswer1.text = textField.text
        textAnswer2.text = textField.text
        textAnswer3.text = textField.text
        textAnswer4.text = textField.text
    }
    
    @IBAction func Check1(_ sender: Any) {
        var nomer = ""
        nomer = textAnswer1.text!
        if (nomer.range(of: "^\\(\\+380\\)[0-9]{9}$", options: .regularExpression) == nil){
            textAnswer1.backgroundColor = .red
        }
        else{
            textAnswer1.backgroundColor = .green
        }
    }
    
    @IBAction func buttonCheck2(_ sender: Any) {
        var nameSurn = ""
        nameSurn = textAnswer2.text!
        if (nameSurn.range(of: "^[A-Z][a-z]+ [A-Z][a-z]+$", options: .regularExpression) == nil){
            textAnswer2.backgroundColor = .red
        }
        else{
            textAnswer2.backgroundColor = .green
        }
    }
    @IBAction func buttonCheck3(_ sender: Any) {
        var birthDay = ""
        birthDay = textAnswer3.text!
        if (birthDay.range(of: "^([0-2][1-9])|(3[0-1])\\.(0[1-9])|(1[0-2])\\.(19[0-9]{2})|(20(([0-1][1-9])|(20)))$", options: .regularExpression) == nil){
            textAnswer3.backgroundColor = .red
        }
        else{
            textAnswer3.backgroundColor = .green
        }
    }
    
    @IBAction func buttonCheck4(_ sender: Any) {
        var post = ""
        post = textAnswer4.text!
        if (post.range(of: "^\\w*@gmail\\.com$", options: .regularExpression) == nil){
            textAnswer4.backgroundColor = .red
        }
        else{
            textAnswer4.backgroundColor = .green
        }
    }
}
