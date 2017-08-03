//
//  KBlinkingLabel.swift
//  Pods
//
//  Created by Peerlogic Systems on 03/08/17.
//
//

import UIKit

public class KBlinkingLabel: UILabel {

    public func startBlinking() {
        UIView.animate(withDuration: 1, animations: {
            self.alpha = 0

        }, completion: nil)
    }
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
