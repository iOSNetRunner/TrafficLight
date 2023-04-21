//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dmitrii Galatskii on 21.04.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!

    @IBOutlet var startButton: UIButton!
    
    private enum SelectedColor {
        case red
        case yellow
        case green
    }

    private var currentSelectedColor = SelectedColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func startButtonTapped() {
        if startButton.isEnabled {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentSelectedColor {
        case .red:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            redLight.layer.shadowColor = UIColor.red.cgColor
            redLight.layer.shadowRadius = 50
            redLight.layer.shadowOpacity = 1
            currentSelectedColor = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            yellowLight.layer.shadowColor = UIColor.yellow.cgColor
            yellowLight.layer.shadowRadius = 50
            yellowLight.layer.shadowOpacity = 1
            currentSelectedColor = .green
        case .green:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            greenLight.layer.shadowColor = UIColor.green.cgColor
            greenLight.layer.shadowRadius = 50
            greenLight.layer.shadowOpacity = 1
            currentSelectedColor = .red
        }
    }
}
