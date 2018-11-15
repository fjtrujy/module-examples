//
//  AppModuleModel.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class AppModuleModel: NSObject {
    private(set) var appsDescription: String
    private(set) var apps : Array<GenericAppInformation>
    override init() {
        //Mocking values, ideally it should come from requests, BBDD....
        appsDescription = "List of most used apps"
        
        apps = []
        apps.append(GenericAppInformation(appName: "Facebook", appIcon: UIImage(named: "facebookIcon")!))
        apps.append(GenericAppInformation(appName: "Whatsapp", appIcon: UIImage(named: "whatsappIcon")!))
        
        super.init()
    }
}
