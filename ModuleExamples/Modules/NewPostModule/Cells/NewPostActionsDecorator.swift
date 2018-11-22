//
//  NewPostActionsDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class NewPostActionsDecorator: NSObject {
    func backgroundColor() -> UIColor? {
        return UIColor.white
    }
    
    func separatorColor() -> UIColor? {
        return UIColor.gray
    }
    
    func liveIcon() -> UIImage? {
        return UIImage(named: "recordLiveIcon")
    }
    
    func liveAttributedString() -> NSAttributedString? {
        return NSAttributedString(string: "Live", attributes: attributes)
    }
    
    func pictureIcon() -> UIImage? {
        return UIImage(named: "newPhoto")
    }
    
    func photoAttributedString() -> NSAttributedString? {
        return NSAttributedString(string: "Photo", attributes: attributes)
    }
    
    func checkInIcon() -> UIImage? {
        return UIImage(named: "checkIn")
    }
    
    func checkInAttributedString() -> NSAttributedString? {
        return NSAttributedString(string: "Check In", attributes: attributes)
    }
}

//MARK: DecoratorBasicInfo
extension NewPostActionsDecorator {
    
    private var titleColor : UIColor {
        return UIColor.gray
    }
    
    private var titleFont : UIFont {
        return UIFont.boldSystemFont(ofSize:11)
    }
    
    private var attributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : titleFont,
            NSAttributedString.Key.foregroundColor : titleColor,
        ]
    }
}
