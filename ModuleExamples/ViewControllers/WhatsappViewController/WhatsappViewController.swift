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
    }
    
    override func createModules() {
        super.createModules()
        
        //My Status Module
        let myStatusModule = WhatsappStateModule.init(tableView: tableView!)
        
        // Values ideally received from request/responses
        let myStatusModuleDecorator = WhatsappStateModuleDecorator()
        myStatusModuleDecorator.rows = [
            WhatsappStatusCellDecorator.init(title: "My Status", subtitle: "Add to my status", buttons: true),
        ]
        
        myStatusModule.configure(decorator: myStatusModuleDecorator)
        self.appendModule(myStatusModule)
    }

}
