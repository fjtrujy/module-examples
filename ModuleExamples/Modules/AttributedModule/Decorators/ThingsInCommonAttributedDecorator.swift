//
//  ThingsInCommonAttributedDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class ThingsInCommonAttributedDecorator: CommonAttributedDecorator {
    override func attributedTitle() -> NSAttributedString? {
        let attr = NSMutableAttributedString()
        attr.append(mainAttributedInfo)
        attr.append(attributedBreakLine)
        attr.append(mutualFriendsAttributedInfo)
        attr.append(attributedBreakLine)
        attr.append(thingsInCommonAttributedInfo)
        
        return attr
    }
}

//MARK: - ThingsInCommonAttributedDecorator
private extension ThingsInCommonAttributedDecorator {
    
    var mainColor : UIColor {
        return UIColor.black
    }
    
    var softColor : UIColor {
        return UIColor.gray
    }
    
    var mainFont : UIFont {
        return UIFont.boldSystemFont(ofSize:15)
    }
    
    var secondaryFont : UIFont {
        return UIFont.systemFont(ofSize:13)
    }
    
    var alternativeFont : UIFont {
        return UIFont.boldSystemFont(ofSize:13)
    }
    
    var smalFont : UIFont {
        return UIFont.systemFont(ofSize:9)
    }
    
    var mainAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : mainFont,
            NSAttributedString.Key.foregroundColor : mainColor,
        ]
    }
    
    var softAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : secondaryFont,
            NSAttributedString.Key.foregroundColor : softColor,
        ]
    }
    
    var alternativeAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : alternativeFont,
            NSAttributedString.Key.foregroundColor : mainColor,
        ]
    }
    
    var smallAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : smalFont,
            NSAttributedString.Key.foregroundColor : mainColor,
        ]
    }
    
    var attributedBreakLine : NSAttributedString {
        return NSAttributedString(string: "\n", attributes:smallAttributes)
    }
    
    var offLineFriendAttributedIcon : NSAttributedString {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "offlineFriend")
        changeAttachmentImageHeight(attachment: imageAttachment, height: mainFont.pointSize)
        
        return NSAttributedString(attachment: imageAttachment)
    }
    
    var thanksHeartAttributedIcon : NSAttributedString {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "thanksHeart")
        changeAttachmentImageHeight(attachment: imageAttachment, height: mainFont.pointSize)
        
        return NSAttributedString(attachment: imageAttachment)
    }
    
    var mainAttributedInfo : NSAttributedString {
        let attr = NSMutableAttributedString()
        attr.append(NSAttributedString(string: "Jose Luis Jordano Palma\n", attributes: mainAttributes))
        return attr
    }
    
    var mutualFriendsAttributedInfo : NSAttributedString {
        let attr = NSMutableAttributedString()
        attr.append(offLineFriendAttributedIcon)
        attr.append(NSAttributedString(string: " Mutual friends ", attributes: softAttributes))
        attr.append(NSAttributedString(string: "Patricio Pacheco Arias ", attributes: alternativeAttributes))
        attr.append(NSAttributedString(string: "and 7 others\n", attributes: softAttributes))
        return attr
    }
    
    var thingsInCommonAttributedInfo : NSAttributedString {
        let attr = NSMutableAttributedString()
        attr.append(thanksHeartAttributedIcon)
        attr.append(NSAttributedString(string: " Things in common ", attributes: softAttributes))
        attr.append(NSAttributedString(string: "RULES Sierra Nevada ", attributes: alternativeAttributes))
        attr.append(NSAttributedString(string: "and 1 more\n", attributes: softAttributes))
        return attr
    }
    
}
