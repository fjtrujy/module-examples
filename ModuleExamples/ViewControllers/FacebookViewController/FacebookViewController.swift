//
//  FacebookViewController.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class FacebookViewController: ModulesViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView?.tableFooterView = UIView()
        self.title = "Facebook - MainView"
    }
    
    override func createModules() {
        super.createModules()
        
        newPostModule()
        storiesModule()
    }
    
    func newPostModule() {
        appendModule(NewPostModule.init(tableView: tableView!))
    }
    
    func storiesModule() {
        appendModule(StoriesModule.init(tableView: tableView!))
    }
}
