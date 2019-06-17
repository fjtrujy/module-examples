//
//  StoryCollectionDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 27/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class StoryCollectionDecorator: NSObject {
    private var title : String?
    private var storyURL : URL?
    private var profileURL : URL?
    
    init(storyDataModel : StoryDataModel) {
        super.init()
        
        title = storyDataModel.username
        storyURL = storyDataModel.storyImagePath
        profileURL = storyDataModel.profileImagePath
    }
    
    func storyImage() -> URL? {
        return storyURL
    }
    
    func profileImage() -> URL? {
        return profileURL
    }
    
    func attributedProfile() -> NSAttributedString? {
        return NSAttributedString(string: title!, attributes: attributes)
    }
    
    func backgroundColor() -> UIColor {
        return .white
    }
    
    func borderColor() -> UIColor {
        return .blue
    }
}

//MARK: - DecoratorBasicInfo
extension StoryCollectionDecorator {
    
    private var titleColor : UIColor {
        return .white
    }
    
    private var titleFont : UIFont {
        return .boldSystemFont(ofSize:12)
    }
    
    private var attributes : [NSAttributedString.Key : Any] {
        
        return [
            .font : titleFont,
            .foregroundColor : titleColor,
        ]
    }
}
