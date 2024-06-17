//
//  ViewController.swift
//  CounterApp
//
//  Created by Supraja on 17/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var numbersLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    
    var value = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        minusButton.layer.cornerRadius = 35
        minusButton.backgroundColor = .systemPink
        numbersLabel.layer.cornerRadius = 60
        numbersLabel.backgroundColor = .systemCyan
        numbersLabel.layer.masksToBounds = true
        plusButton.layer.cornerRadius = 35
        plusButton.backgroundColor = .systemPink
    }
    
    @IBAction func didTouchPlusButton() {
        value = value+1
        numbersLabel.text = "\(value)"
    }
    
    @IBAction func didTouchMinusButton() {
        if value == 0 {
            return
        }
        value = value-1
        numbersLabel.text = "\(value)"
    }
}

