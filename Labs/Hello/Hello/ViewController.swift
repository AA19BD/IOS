//
//  ViewController.swift
//  Hello
//
//  Created by Абылай Айтбанов on 03.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var Label: UILabel!
    @IBAction func Button(_ sender: Any) {
        Label.text="Hello "+textField.text!
    }
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

