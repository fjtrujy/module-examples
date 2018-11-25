//
//  StoriesDataModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 25/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

private struct Constants {
    static let storiesKey : String = "stories"
}

class StoriesDataModule: NSObject {
    private(set) var stories : Array<StoryDataModel>?
    
    init(payload : Dictionary<String, Any>) {
        let storiesPayload = payload[Constants.storiesKey] as? Array<Dictionary<String, Any>>
        var myStories : Array<StoryDataModel> = []
        for storyDic in storiesPayload! {
            myStories.append(StoryDataModel(payload: storyDic))
        }
        
        stories = myStories
    }
}
