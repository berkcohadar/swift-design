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
    let thirdView = UIView(frame: CGRect(x: UIScreen.main.bounds.width * 0, y: UIScreen.main.bounds.height * 1, width: 30, height: 30))
    let forthView = UIView(frame: CGRect(x: UIScreen.main.bounds.width * 1, y: UIScreen.main.bounds.height * 0, width: 30, height: 30))


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
        
        thirdView.backgroundColor = .systemGreen
        thirdView.layer.cornerRadius = thirdView.layer.bounds.width / 2
        thirdView.clipsToBounds = true
        
        forthView.backgroundColor = .black
        forthView.layer.cornerRadius = forthView.layer.bounds.width / 2
        forthView.clipsToBounds = true

        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)
        view.addSubview(forthView)

    }

    @IBAction func sliderValue(_ sender: Any) {
        firstView.frame.origin.x = CGFloat(Slider.value) * screenSize.width
        firstView.frame.origin.y = CGFloat(Slider.value) * screenSize.height
        
        thirdView.frame.origin.x = CGFloat(Slider.value) * screenSize.width
        thirdView.frame.origin.y = CGFloat(1-Slider.value) * screenSize.height
    }
    
    @IBAction func sliderBottomValue(_ sender: Any) {
        secondView.frame.origin.x = CGFloat(SliderBottom.value) * screenSize.width
        secondView.frame.origin.y = CGFloat(SliderBottom.value) * screenSize.height
        
        forthView.frame.origin.x = CGFloat(SliderBottom.value) * screenSize.width
        forthView.frame.origin.y = CGFloat(1-SliderBottom.value) * screenSize.height
    }
        
    @IBAction func bringItOn(_ sender: Any) {
        
        let temp = UIView(frame: CGRect(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0, width: 30, height: 30))
        temp.backgroundColor = .cyan
        temp.layer.cornerRadius = temp.layer.bounds.width / 2
        temp.clipsToBounds = true
        view.addSubview(temp)
        
        let temp2 = UIView(frame: CGRect(x: UIScreen.main.bounds.width * 0, y: UIScreen.main.bounds.height * 0.5, width: 30, height: 30))
        temp2.backgroundColor = .red
        temp2.layer.cornerRadius = temp2.layer.bounds.width / 2
        temp2.clipsToBounds = true
        view.addSubview(temp2)
        
        let temp3 = UIView(frame: CGRect(x: UIScreen.main.bounds.width * 1, y: UIScreen.main.bounds.height * 0.5, width: 30, height: 30))
        temp3.backgroundColor = .yellow
        temp3.layer.cornerRadius = temp3.layer.bounds.width / 2
        temp3.clipsToBounds = true
        view.addSubview(temp3)
        
        let temp4 = UIView(frame: CGRect(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 1, width: 30, height: 30))
        temp4.backgroundColor = .orange
        temp4.layer.cornerRadius = temp4.layer.bounds.width / 2
        temp4.clipsToBounds = true
        view.addSubview(temp4)
        
        UIView.animate(withDuration: 15.0,
            delay: 0.0,
            usingSpringWithDamping: 0.1,
            initialSpringVelocity: 1,
            options: UIView.AnimationOptions.curveEaseInOut,
            animations: ({
                temp.center = self.view.center
        }), completion:{_ in
            temp.removeFromSuperview()
        })
        
        UIView.animate(withDuration: 15.0,
            delay: 0.0,
            usingSpringWithDamping: 0.1,
            initialSpringVelocity: 1,
            options: UIView.AnimationOptions.curveEaseInOut,
            animations: ({
                temp2.center = self.view.center
        }), completion:{_ in
            temp2.removeFromSuperview()
        })
        
        UIView.animate(withDuration: 15.0,
            delay: 0.0,
            usingSpringWithDamping: 0.1,
            initialSpringVelocity: 1,
            options: UIView.AnimationOptions.curveEaseInOut,
            animations: ({
                temp3.center = self.view.center
        }), completion:{_ in
            temp3.removeFromSuperview()
        })
        
        UIView.animate(withDuration: 15.0,
            delay: 0.0,
            usingSpringWithDamping: 0.1,
            initialSpringVelocity: 1,
            options: UIView.AnimationOptions.curveEaseInOut,
            animations: ({
                temp4.center = self.view.center
        }), completion:{_ in
            temp4.removeFromSuperview()
        })
        
        //temp.removeFromSuperview()
        //temp2.removeFromSuperview()
        //temp3.removeFromSuperview()
        //temp4.removeFromSuperview()

    }
}

