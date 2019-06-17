//
//  CommonAttributedDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class CommonAttributedDecorator: NSObject {
    
    func backgroundColor() -> UIColor? {
        return .white
    }
    
    func attributedTitle() -> NSAttributedString? {
        return NSAttributedString()
    }
    
    
    //To resize images
    func changeAttachmentImageHeight(attachment: NSTextAttachment, height: CGFloat) {
        let image = attachment.image
        
        let ratio = image!.size.width / image!.size.height
        let bounds = attachment.bounds
        let delta = ((image?.size.height)! - height) / 8
        attachment.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y - delta, width: ratio * height, height: height)
    }
}
