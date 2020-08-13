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
        textAnswer1.delegate = self
       // regularExp()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true

    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textAnswer1.text = textField.text
    
    }
    
    @IBAction func Check1(_ sender: Any) {
        var nomer = ""
        nomer = textAnswer1.text!
        if (nomer.range(of: "\\(\\+380\\)[0-9]{9}", options: .regularExpression) == nil){
            textAnswer1.backgroundColor = .red
        }
        else{
            textAnswer1.backgroundColor = .green
        }
    }

}
