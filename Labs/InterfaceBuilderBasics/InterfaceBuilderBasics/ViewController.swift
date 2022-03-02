//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Абылай Айтбанов on 03.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text="This app rocks!"
    }
    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

