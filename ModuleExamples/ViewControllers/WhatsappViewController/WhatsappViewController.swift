//
//  WhatsappViewController.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class WhatsappViewController: ModulesViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Whatsapp - States"
    }
    
    override func createModules() {
        super.createModules()
        
        myStatusModule()
        recentUpdatesModule()
        viewedUpdatesModule()
    }
    
    func myStatusModule() {
        // Values ideally received from request/responses
        let moduleDecorator = WhatsappStateModuleDecorator()
        moduleDecorator.rows = [
            WhatsappStatusCellDecorator.init(imageName: "trujy", title: "My Status", subtitle: "Add to my status", buttons: true),
        ]
        
        let myStatusModule = WhatsappStateModule.init(tableView: tableView!)
        myStatusModule.configure(decorator: moduleDecorator)
        self.appendModule(myStatusModule)
    }
    
    func recentUpdatesModule() {
        // Values ideally received from request/responses
        let moduleDecorator = WhatsappStateModuleDecorator()
        moduleDecorator.headerTitle = "Recent Updates"
        moduleDecorator.rows = [
            WhatsappStatusCellDecorator.init(imageName: "trujy", title: "Carles Tete", subtitle: "20 minutes ago", buttons: false),
            WhatsappStatusCellDecorator.init(imageName: "trujy", title: "Mad Mocana", subtitle: "25 minutes ago", buttons: false),
            WhatsappStatusCellDecorator.init(imageName: "trujy", title: "Pableras Pan", subtitle: "32 minutes ago", buttons: false),
        ]
        
        let recentStatusModule = WhatsappStateModule.init(tableView: tableView!)
        recentStatusModule.configure(decorator: moduleDecorator)
        self.appendModule(recentStatusModule)
    }
    
    func viewedUpdatesModule() {
        // Values ideally received from request/responses
        let moduleDecorator = WhatsappStateModuleDecorator()
        moduleDecorator.headerTitle = "Viewed Updates"
        moduleDecorator.rows = [
            WhatsappStatusCellDecorator.init(imageName: "trujy", title: "JDRap", subtitle: "5h ago", buttons: false),
            WhatsappStatusCellDecorator.init(imageName: "trujy", title: "Jhon Hater", subtitle: "7h ago", buttons: false),
            WhatsappStatusCellDecorator.init(imageName: "trujy", title: "Barry Lete", subtitle: "9h ago", buttons: false),
        ]
        
        let viewedUpdatesModule = WhatsappStateModule.init(tableView: tableView!)
        viewedUpdatesModule.configure(decorator: moduleDecorator)
        self.appendModule(viewedUpdatesModule)
    }

}
