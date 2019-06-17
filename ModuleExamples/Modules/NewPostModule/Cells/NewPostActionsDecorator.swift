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
        return .white
    }
    
    func separatorColor() -> UIColor? {
        return .gray
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

//MARK: - DecoratorBasicInfo
extension NewPostActionsDecorator {
    
    private var titleColor : UIColor {
        return .gray
    }
    
    private var titleFont : UIFont {
        return .boldSystemFont(ofSize:11)
    }
    
    private var attributes : [NSAttributedString.Key : Any] {
        
        return [
            .font : titleFont,
            .foregroundColor : titleColor,
        ]
    }
}
