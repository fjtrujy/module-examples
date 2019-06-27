//
//  UIViewControllerSwiftInjection.swift
//  InjectionBundle
//
//  Created by Francisco Javier Trujillo Mata on 23/04/2019.
//  Copyright © 2019 John Holdsworth. All rights reserved.
//

import Foundation
#if os(iOS) || os(tvOS)
import UIKit

private struct Constants {
    static let initialAlpha: CGFloat = 0.3
    static let finalAlpha: CGFloat = 0.0
    static let animationDuration = 0.2
    static let animationDelay = 0.0
}

public extension UIViewController {
    
    /// inject a UIView controller and redraw
    func injectVC() {
        inject()
        for subview in self.view.subviews {
            subview.removeFromSuperview()
        }
        if let sublayers = self.view.layer.sublayers {
            for sublayer in sublayers {
                sublayer.removeFromSuperlayer()
            }
        }
        viewDidLoad()
    }
    
    @objc
    func flashToUpdate() {
        DispatchQueue.main.async {
            let v = UIView(frame: self.view.frame)
            v.backgroundColor = .white
            v.alpha = Constants.initialAlpha
            self.view.addSubview(v)
            UIView.animate(withDuration: Constants.animationDuration,
                           delay: Constants.animationDelay,
                           options: UIViewAnimationOptions.curveEaseIn,
                           animations: {
                            v.alpha = Constants.finalAlpha
            }, completion: { _ in v.removeFromSuperview() })
        }
    }
}

#else
import Cocoa
#endif
