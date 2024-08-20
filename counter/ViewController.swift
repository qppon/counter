//
//  ViewController.swift
//  counter
//
//  Created by Jojo Smith on 8/19/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterButton: UIButton!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    private var counterNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        counterLabel.text = "Значение счетчика: 0"
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        counterNumber += 1
        counterLabel.text = "Значение счетчика: \(counterNumber)"
    }
    

}

