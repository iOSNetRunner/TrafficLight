//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dmitrii Galatskii on 21.04.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!

    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 69
        yellowLight.layer.cornerRadius = 69
        greenLight.layer.cornerRadius = 69
        startButton.layer.cornerRadius = 20
    }

    @IBAction func startButtonTapped() {
        if startButton.isEnabled {
            startButton.setTitle("NEXT", for: .normal)
        }
    }
}

