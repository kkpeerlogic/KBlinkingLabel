//
//  ViewController.swift
//  KBlinkingLabel
//
//  Created by kkpeerlogic on 08/03/2017.
//  Copyright (c) 2017 kkpeerlogic. All rights reserved.
//

import UIKit
import KBlinkingLabel

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = KBlinkingLabel(frame:CGRect(x: 10, y: 0, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        //CGRect(x: 0, y: 0, width: 100, height: 100)
        let toggleButton = UIButton(frame:CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(.red, for: .normal)
        toggleButton.addTarget(self, action:#selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
        
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

