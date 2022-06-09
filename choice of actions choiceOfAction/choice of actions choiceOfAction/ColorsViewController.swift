//
//  ColorsViewController.swift
//  choice of actions choiceOfAction
//
//  Created by M1 on 06.06.2022.
//

import UIKit

class ColorsViewController: UIViewController {
    @IBOutlet private weak var labelRedColoe: UILabel!
    @IBOutlet private weak var labelGreenColor: UILabel!
    @IBOutlet private weak var labelBlueColor: UILabel!
    @IBOutlet private weak var viewColorChange: UIView!
    @IBOutlet private weak var sliderRed: UISlider!
    @IBOutlet private weak var sliderGreen: UISlider!
    @IBOutlet private weak var sliderBlue: UISlider!
    
    let maxColorValue: Float = 255
    let minColorValue: Float = 0
    var mediumColorValue: Float {
        return ((maxColorValue - minColorValue) / 2 + minColorValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Изменить цвет"
        updateAllSlidersValue(mediumColorValue)
        updateColorLabel()
        updateViewColor()
    }
    
    @IBAction private func changeToMinValueColor(_ sender: UIButton) {
        updateAllSlidersValue(minColorValue)
        updateColorLabel()
        updateViewColor()
    }
    
    @IBAction private func changeToMediumValueColor(_ sender: UIButton) {
        updateAllSlidersValue(mediumColorValue)
        updateColorLabel()
        updateViewColor()
    }
    
    @IBAction private func changeToMaxValueColor(_ sender: UIButton) {
        updateAllSlidersValue(maxColorValue)
        updateColorLabel()
        updateViewColor()
    }
    
    private func updateColorLabel() {
        labelRedColoe.text = "\(Int(sliderRed.value))"
        labelBlueColor.text = "\(Int(sliderBlue.value))"
        labelGreenColor.text = "\(Int(sliderGreen.value))"
    }
    
    @IBAction private func sliderRed(_ sender: UISlider) {
        updateColorLabel()
        updateViewColor()
    }
    
    @IBAction private func sliderGreen(_ sender: UISlider) {
        updateColorLabel()
        updateViewColor()
    }
    
    @IBAction func sliderBlue(_ sender: UISlider) {
        updateColorLabel()
        updateViewColor()
    }
    
    private func updateViewColor() {
        viewColorChange.backgroundColor = UIColor(red: CGFloat(sliderRed.value) / 255, green: CGFloat(sliderGreen.value) / 255, blue: CGFloat(sliderBlue.value) / 255, alpha: 1)
    }
    
    @IBAction func backToMenu() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func updateAllSlidersValue(_ value: Float) {
        let sliderArray = [sliderRed, sliderBlue, sliderGreen]
        for slider in sliderArray {
            slider?.value = value
        }
    }
}
