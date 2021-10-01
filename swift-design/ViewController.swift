//
//  ViewController.swift
//  swift-design
//
//  Created by Berk Çohadar on 9/29/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var SliderBottom: UISlider!
    let screenSize: CGRect = UIScreen.main.bounds
    let firstView = UIView(frame: CGRect(x: UIScreen.main.bounds.width * 0, y: UIScreen.main.bounds.height * 0, width: 30, height: 30))
    let secondView = UIView(frame: CGRect(x: UIScreen.main.bounds.width * 1, y: UIScreen.main.bounds.height * 1, width: 30, height: 30))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Slider.value = 0
        SliderBottom.value = 1

        firstView.backgroundColor = .systemGreen
        firstView.layer.cornerRadius = firstView.layer.bounds.width / 2
        firstView.clipsToBounds = true
        
        secondView.backgroundColor = .black
        secondView.layer.cornerRadius = secondView.layer.bounds.width / 2
        secondView.clipsToBounds = true

        view.addSubview(firstView)
        view.addSubview(secondView)

    }

    @IBAction func sliderValue(_ sender: Any) {
        firstView.frame.origin.x = CGFloat(Slider.value) * screenSize.width
        firstView.frame.origin.y = CGFloat(Slider.value) * screenSize.height
    }
    
    @IBAction func sliderBottomValue(_ sender: Any) {
        secondView.frame.origin.x = CGFloat(SliderBottom.value) * screenSize.width
        secondView.frame.origin.y = CGFloat(SliderBottom.value) * screenSize.height
    }

}

