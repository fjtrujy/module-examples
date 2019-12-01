//
//  AppModuleModel.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

struct AppModuleModel {
    //Mocking values, ideally it should come from requests, BBDD....
    let appsDescription: String = "List of most used apps"
    let apps : [GenericAppInformation] = [
        GenericAppInformation(app: .Facebook, appIcon: UIImage(named: "facebookIcon")),
        GenericAppInformation(app: .Whatsapp, appIcon: UIImage(named: "whatsappIcon")),
        GenericAppInformation(app: .Potpurri, appIcon: UIImage(named: "potpurryIcon")),
        GenericAppInformation(app: .Playground, appIcon: UIImage(named: "playgroundIcon")),
    ]
}
