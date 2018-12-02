//
//  StoriesTitleDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 25/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class StoriesTitleDecorator: NSObject {

    func backgroundColor() -> UIColor? {
        return UIColor.white
    }
    
    func attributedTitle() -> NSAttributedString? {
        return NSAttributedString.init(string: "Stories", attributes: attributes)
    }
    
    func attributedArchive() -> NSAttributedString? {
        return NSAttributedString.init(string: "Your archive", attributes: attributes)
    }
}

//MARK: - DecoratorBasicInfo
extension StoriesTitleDecorator {
    
    private var titleColor : UIColor {
        return UIColor.black
    }
    
    private var titleFont : UIFont {
        return UIFont.boldSystemFont(ofSize:13)
    }
    
    private var attributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : titleFont,
            NSAttributedString.Key.foregroundColor : titleColor,
        ]
    }
}
