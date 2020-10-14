//
//  WhatsappViewController.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import ModuleServices

class WhatsappViewController: ModulesViewController {
    override func setupStyle() {
        super.setupStyle()
        
        title = "Whatsapp - States"
    }
    
    override func createModules() {
        super.createModules()
        
        myStatusModule()
        recentUpdatesModule()
        viewedUpdatesModule()
    }
}

// MARK: - Private Methods
private extension WhatsappViewController {
    func myStatusModule() {
        // Values ideally received from request/responses
        let moduleDecorator = WhatsappStateModuleDecorator()
        moduleDecorator.rows = [
            WhatsappStatusCellDecorator(imageName: "trujy", title: "My Status", subtitle: "Add to my status", buttons: true),
        ]
        
        let myStatusModule = WhatsappStateModule(tableView: tableView!)
        myStatusModule.configure(decorator: moduleDecorator)
        appendModule(myStatusModule)
    }
    
    func recentUpdatesModule() {
        // Values ideally received from request/responses
        let moduleDecorator = WhatsappStateModuleDecorator()
        moduleDecorator.headerTitle = "Recent Updates"
        moduleDecorator.rows = [
            WhatsappStatusCellDecorator(imageName: "trujy", title: "Carles Tete", subtitle: "20 minutes ago", buttons: false),
            WhatsappStatusCellDecorator(imageName: "trujy", title: "Mad Mocana", subtitle: "25 minutes ago", buttons: false),
            WhatsappStatusCellDecorator(imageName: "trujy", title: "Pableras Pan", subtitle: "32 minutes ago", buttons: false),
        ]
        
        let recentStatusModule = WhatsappStateModule(tableView: tableView!)
        recentStatusModule.configure(decorator: moduleDecorator)
        appendModule(recentStatusModule)
    }
    
    func viewedUpdatesModule() {
        // Values ideally received from request/responses
        let moduleDecorator = WhatsappStateModuleDecorator()
        moduleDecorator.headerTitle = "Viewed Updates"
        moduleDecorator.rows = [
            WhatsappStatusCellDecorator(imageName: "trujy", title: "JDRap", subtitle: "5h ago", buttons: false),
            WhatsappStatusCellDecorator(imageName: "trujy", title: "Jhon Hater", subtitle: "7h ago", buttons: false),
            WhatsappStatusCellDecorator(imageName: "trujy", title: "Barry Lete", subtitle: "9h ago", buttons: false),
        ]
        
        let viewedUpdatesModule = WhatsappStateModule(tableView: tableView!)
        viewedUpdatesModule.configure(decorator: moduleDecorator)
        appendModule(viewedUpdatesModule)
    }
}
