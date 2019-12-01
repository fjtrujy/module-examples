//
//  RequestFriendsAttributedDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class RequestFriendsAttributedDecorator: CommonAttributedDecorator {
    override func attributedTitle() -> NSAttributedString? {
        let attr = NSMutableAttributedString()
        attr.append(mainAttributedInfo)
        attr.append(attributedBreakLine)
        attr.append(descAttributedInfo)
        
        return attr
    }
}

//MARK: - RequestFriendsAttributedDecorator
private extension RequestFriendsAttributedDecorator {
    var mainColor : UIColor { .black }
    var softColor : UIColor { .gray }
    var mainFont : UIFont { .boldSystemFont(ofSize:15) }
    var secondaryFont : UIFont { .systemFont(ofSize:13) }
    var alternativeFont : UIFont { .systemFont(ofSize:15) }
    var smalFont : UIFont { .systemFont(ofSize:9) }
    
    var mainAttributes : [NSAttributedString.Key : Any] {
        return [
            .font : mainFont,
            .foregroundColor : mainColor,
        ]
    }
    
    var softAttributes : [NSAttributedString.Key : Any] {
        return [
            .font : secondaryFont,
            .foregroundColor : softColor,
        ]
    }
    
    var alternativeAttributes : [NSAttributedString.Key : Any] {
        return [
            .font : alternativeFont,
            .foregroundColor : mainColor,
        ]
    }
    
    var smallAttributes : [NSAttributedString.Key : Any] {
        return [
            .font : smalFont,
            .foregroundColor : mainColor,
        ]
    }
    
    var attributedBreakLine : NSAttributedString {
        return NSAttributedString(string: "\n", attributes:smallAttributes)
    }
    
    var requestFriendAttributedIcon : NSAttributedString {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "requestFriend")
        changeAttachmentImageHeight(attachment: imageAttachment, height: mainFont.pointSize)
        
        return NSAttributedString(attachment: imageAttachment)
    }
    
    var mainAttributedInfo : NSAttributedString {
        let attr = NSMutableAttributedString()
        attr.append(NSAttributedString(string: "Miguél Ángel Gutiérrez, Elena Benítez ",
                                       attributes: mainAttributes))
        attr.append(NSAttributedString(string: "and other 3 accepted your friend requests.",
                                       attributes: alternativeAttributes))
        return attr
    }
    
    var descAttributedInfo : NSAttributedString {
        let attr = NSMutableAttributedString()
        attr.append(requestFriendAttributedIcon)
        attr.append(NSAttributedString(string: " Wednesday at 19:25.", attributes: softAttributes))
        return attr
    }
}

