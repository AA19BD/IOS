//
//  ViewController.swift
//  IBBasics
//
//  Created by Абылай Айтбанов on 03.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed!")
    }
    @IBOutlet var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x: 16, y: 16, width: 200,
        height: 44))
        view.addSubview(label)
    }

        


}

