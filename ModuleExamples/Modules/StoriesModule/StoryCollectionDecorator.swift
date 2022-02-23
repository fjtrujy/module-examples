//
//  StoryCollectionDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 27/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class StoryCollectionDecorator {
    private var title : String?
    private var storyURL : URL?
    private var profileURL : URL?
    
    init(storyDataModel : StoryDataModel) {
        title = storyDataModel.username
        storyURL = storyDataModel.storyImagePath
        profileURL = storyDataModel.profileImagePath
    }
    
    var storyImage: URL? { storyURL }
    var profileImage: URL? { profileURL }
    var attributedProfile: NSAttributedString { .init(string: title!, attributes: attributes) }
    var backgroundColor: UIColor { .white }
    var borderColor: UIColor { .blue }
}

//MARK: - DecoratorBasicInfo
private extension StoryCollectionDecorator {
    var titleColor : UIColor { .white }
    var titleFont : UIFont { .boldSystemFont(ofSize:12) }
    
    var attributes : [NSAttributedString.Key : Any] {
        [
            .font : titleFont,
            .foregroundColor : titleColor,
        ]
    }
}
