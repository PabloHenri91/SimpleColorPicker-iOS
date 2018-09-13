//
//  ViewController.swift
//  ColorPicker
//
//  Created by Pablo on 9/12/18.
//  Copyright © 2018 uMov.me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var strokeColor: UIView!
    @IBOutlet weak var colorPickerView: ColorPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorPickerView.isHidden = true
        self.colorPickerView.delegate = self
        
        self.colorPickerView.colors = [
            #colorLiteral(red: 0.9529411765, green: 0.2274509804, blue: 0.1843137255, alpha: 1), #colorLiteral(red: 0.9137254902, green: 0.1176470588, blue: 0.3882352941, alpha: 1), #colorLiteral(red: 0.6117647059, green: 0.1529411765, blue: 0.6901960784, alpha: 1), #colorLiteral(red: 0.4039215686, green: 0.2274509804, blue: 0.7176470588, alpha: 1), #colorLiteral(red: 0.2470588235, green: 0.3176470588, blue: 0.7098039216, alpha: 1), #colorLiteral(red: 0.1294117647, green: 0.5882352941, blue: 0.9529411765, alpha: 1), #colorLiteral(red: 0.01176470588, green: 0.662745098, blue: 0.9568627451, alpha: 1), #colorLiteral(red: 0, green: 0.737254902, blue: 0.831372549, alpha: 1), #colorLiteral(red: 0, green: 0.5882352941, blue: 0.5333333333, alpha: 1), #colorLiteral(red: 0.2980392157, green: 0.6862745098, blue: 0.3137254902, alpha: 1), #colorLiteral(red: 0.5450980392, green: 0.7647058824, blue: 0.2901960784, alpha: 1), #colorLiteral(red: 0.8039215686, green: 0.862745098, blue: 0.2235294118, alpha: 1), #colorLiteral(red: 1, green: 0.9215686275, blue: 0.231372549, alpha: 1), #colorLiteral(red: 1, green: 0.7568627451, blue: 0.02745098039, alpha: 1), #colorLiteral(red: 1, green: 0.5960784314, blue: 0, alpha: 1), #colorLiteral(red: 1, green: 0.3411764706, blue: 0.1333333333, alpha: 1), #colorLiteral(red: 0.4745098039, green: 0.3333333333, blue: 0.2823529412, alpha: 1), #colorLiteral(red: 0.6196078431, green: 0.6196078431, blue: 0.6196078431, alpha: 1), #colorLiteral(red: 0.3764705882, green: 0.4901960784, blue: 0.5450980392, alpha: 1), #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        ]
    }
    
    @IBAction func buttonStrokeColorAction(_ sender: UIButton) {
        self.colorPickerView.isHidden = !self.colorPickerView.isHidden
    }
}

extension ViewController: ColorPickerViewDelegate {
    
    func colorPickerViewDidFinishPickingColor(_ ColorPickerView: ColorPickerView, color: UIColor) {
        self.colorPickerView.isHidden = true
        self.strokeColor.backgroundColor = color
    }
}

