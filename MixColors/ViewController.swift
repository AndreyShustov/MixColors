//
//  ViewController.swift
//  MixColors
//
//  Created by Андрей  Шустов on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redCountSliderLabel: UILabel!
    @IBOutlet weak var greenCountSliderLabel: UILabel!
    @IBOutlet weak var blueCountSliderLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var mixColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func changeColorView() {
        mixColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func redSliderAction() {
        let roundSliderValue = round(redSlider.value * 100) / 100
        redCountSliderLabel.text = String(roundSliderValue)
        changeColorView()
    }
    @IBAction func greenSliderAction() {
        let roundSliderValue = round(greenSlider.value * 100) / 100
        greenCountSliderLabel.text = String(roundSliderValue)
        changeColorView()
    }
    @IBAction func blueSliderAction() {
        let roundSliderValue = round(blueSlider.value * 100) / 100
        blueCountSliderLabel.text = String(roundSliderValue)
        changeColorView()
    }
}

