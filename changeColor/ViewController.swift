//
//  ViewController.swift
//  changeColor
//
//  Created by 陳士偉 on 2021/3/16.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var picaView: UIImageView!
    @IBOutlet weak var redChange: UILabel!
    @IBOutlet weak var greenChange: UILabel!
    @IBOutlet weak var blueChange: UILabel!
    @IBOutlet weak var alphaChange: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    let initialRed: Float = 255
    let initialGreen: Float = 220
    let initialBlue: Float = 42
    let initialAlpha: Float = 0.8
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redSlider.value = initialRed
        greenSlider.value = initialGreen
        blueSlider.value = initialBlue
        alphaSlider.value = initialAlpha
        
        picaView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
        
        }
    
    func labelName(redValue: Float, _ greenValue: Float, _ blueValue: Float, _ alphaValue: Float){
        
        redChange.text = String(format: "%.0f", redValue)
        greenChange.text = String(format: "%.0f", greenValue)
        blueChange.text = String(format: "%.0f", blueValue)
        alphaChange.text = String(format: "%.1f", alphaValue)
        
    }
    
    @IBAction func sliderColorChange(_ sender: UISlider) {
       
        labelName(redValue: redSlider.value,  greenSlider.value,  blueSlider.value, alphaSlider.value)
        
        picaView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
        
        
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        picaView.backgroundColor = UIColor(red: CGFloat(initialRed/255), green: CGFloat(initialGreen/255), blue: CGFloat(initialBlue/255), alpha: CGFloat(initialAlpha))
        
        labelName(redValue: initialRed,  initialGreen,  initialBlue, initialAlpha)
        
        redSlider.value = initialRed
        greenSlider.value = initialGreen
        blueSlider.value = initialBlue
        alphaSlider.value = initialAlpha
        
    }
    
    
    
    
    

}

