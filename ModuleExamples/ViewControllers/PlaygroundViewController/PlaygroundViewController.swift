//
//  PlaygroundViewController.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 02/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import ModulesKit
import UIKit

class PlaygroundViewController: ModulesViewController {

    override func setupStyle() {
        super.setupStyle()
        
        title = "Playground Modules"
        tableView?.tableFooterView = UIView()
    }

    override func createModules() {
        super.createModules()
        
        //Let's give a try adding modules in the order that you more like
        /* Remember, the module is composed by
         - The initialization (maybe it requires inject some values)
         - The delegate (if it is required)
        */
    }
}
