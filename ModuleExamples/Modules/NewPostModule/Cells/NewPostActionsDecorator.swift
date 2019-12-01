//
//  NewPostActionsDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class NewPostActionsDecorator: NSObject {
    func backgroundColor() -> UIColor? { .white }
    func separatorColor() -> UIColor? { .gray }
    
    func liveIcon() -> UIImage? { UIImage(named: "recordLiveIcon") }
    func liveAttributedString() -> NSAttributedString? { NSAttributedString(string: "Live", attributes: attributes) }
    func pictureIcon() -> UIImage? { UIImage(named: "newPhoto") }
    func photoAttributedString() -> NSAttributedString? { NSAttributedString(string: "Photo", attributes: attributes) }
    func checkInIcon() -> UIImage? { UIImage(named: "checkIn") }
    func checkInAttributedString() -> NSAttributedString? {
        NSAttributedString(string: "Check In", attributes: attributes)
    }
}

//MARK: - DecoratorBasicInfo
private extension NewPostActionsDecorator {
    var titleColor : UIColor { .gray }
    private var titleFont : UIFont { .boldSystemFont(ofSize:11) }
    
    private var attributes : [NSAttributedString.Key : Any] {
        return [
            .font : titleFont,
            .foregroundColor : titleColor,
        ]
    }
}
