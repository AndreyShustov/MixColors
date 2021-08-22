//
//  ViewController.swift
//  MixColors
//
//  Created by Андрей  Шустов on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redCountSliderLabel: UILabel!
    @IBOutlet weak var greenCountSliderLabel: UILabel!
    @IBOutlet weak var blueCountSliderLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var mixColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mixColorView.layer.cornerRadius = 15
    }
    
    @IBAction func rgbMixSlider() {
        roundSliderValue()
        changeColorView()
    }
    
    private func changeColorView() {
        mixColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func roundSliderValue() {
        let redRoundSliderValue = round(redSlider.value * 100) / 100
        redCountSliderLabel.text = String(redRoundSliderValue)
        
        let greenRoundSliderValue = round(greenSlider.value * 100) / 100
        greenCountSliderLabel.text = String(greenRoundSliderValue)
        
        let blueRoundSliderValue = round(blueSlider.value * 100) / 100
        blueCountSliderLabel.text = String(blueRoundSliderValue)
    }
}


