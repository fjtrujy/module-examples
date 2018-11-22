//
//  ViewController.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 14/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class MainViewController: ModulesViewController, AppModuleDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Modules are wonderfull!"
        self.tableView?.rowHeight = UITableView.automaticDimension
        self.tableView?.tableFooterView = UIView()
    }
    
    override func createModules() {
        super.createModules()
        
        //AppModule
        let appModule = AppModule(tableView: tableView!)
        appModule.delegate = self
        appendModule(appModule)
    }
    
    //MARK: AppModuleDelegate
    func appSelected(_ appInformation: GenericAppInformation?) {
        
        let viewcontroller : UIViewController
        switch appInformation!.app {
        case .facebook:
            viewcontroller = FacebookViewController()
            break
        case .whatsapp:
            viewcontroller = WhatsappViewController()
            break
        }
        navigationController?.pushViewController(viewcontroller, animated: true)
    }

}

