//
//  NewPostActionsDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class NewPostActionsDecorator {
    var backgroundColor: UIColor? { .white }
    var separatorColor: UIColor? { .gray }
    var liveIcon: UIImage? { UIImage(named: "recordLiveIcon") }
    var liveAttributedString: NSAttributedString? { NSAttributedString(string: "Live", attributes: attributes) }
    var pictureIcon: UIImage? { UIImage(named: "newPhoto") }
    var photoAttributedString: NSAttributedString? { NSAttributedString(string: "Photo", attributes: attributes) }
    var checkInIcon: UIImage? { UIImage(named: "checkIn") }
    var checkInAttributedString: NSAttributedString? { .init(string: "Check In", attributes: attributes) }
}

//MARK: - DecoratorBasicInfo
private extension NewPostActionsDecorator {
    var titleColor : UIColor { .gray }
    var titleFont : UIFont { .boldSystemFont(ofSize:11) }
    
    var attributes : [NSAttributedString.Key : Any] {
        [
            .font : titleFont,
            .foregroundColor : titleColor,
        ]
    }
}
