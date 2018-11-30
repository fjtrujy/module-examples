//
//  PotpurryViewController.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 30/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class PotpurryViewController: ModulesViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView?.tableFooterView = UIView()
        title = "Potpurry"
    }

    override func createModules() {
        super.createModules()
        
        foldUnfoldModule()
        
    }

    func foldUnfoldModule() {
        appendModule(FoldUnfoldModule(tableView: tableView!))
    }
}
