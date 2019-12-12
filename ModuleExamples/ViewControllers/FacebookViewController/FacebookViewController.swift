//
//  FacebookViewController.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class FacebookViewController: ModulesViewController {
    override func setupStyle() {
        super.setupStyle()

        tableView?.tableFooterView = UIView()
        title = "Facebook - MainView"
    }
    
    override func createModules() {
        super.createModules()
        
        newPostModule()
        storiesModule()
        attributedModule()
    }
}

// MARK: - Private Methods
private extension FacebookViewController {
    func newPostModule() {
        appendModule(NewPostModule(tableView: tableView!))
    }
    
    func storiesModule() {
        appendModule(StoriesModule(tableView: tableView!))
    }
    
    func attributedModule() {
        appendModule(AttributedModule(tableView: tableView!))
    }
}
