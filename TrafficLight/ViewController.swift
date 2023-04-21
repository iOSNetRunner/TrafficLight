//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dmitrii Galatskii on 21.04.2023.
//

import UIKit

enum SelectedColor {
    case red
    case yellow
    case green
}

var currentSelectedColor = SelectedColor.red

final class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!

    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 69
        yellowLight.layer.cornerRadius = 69
        greenLight.layer.cornerRadius = 69
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonTapped() {
        if startButton.isEnabled {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        if startButton.isTouchInside {
            switch currentSelectedColor {
            case .red:
                greenLight.alpha = 0.3
                redLight.alpha = 1
                currentSelectedColor = .yellow
            case .yellow:
                redLight.alpha = 0.3
                yellowLight.alpha = 1
                currentSelectedColor = .green
            case .green:
                yellowLight.alpha = 0.3
                greenLight.alpha = 1
                currentSelectedColor = .red
            }
        }
    }
}
