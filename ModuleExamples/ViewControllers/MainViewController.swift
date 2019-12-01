//
//  ViewController.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 14/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class MainViewController: ModulesViewController {
    override func setupStyle() {
        super.setupStyle()
        
        // Do any additional setup after loading the view, typically from a nib.
        title = "Modules are wonderfull!"
        tableView?.rowHeight = UITableView.automaticDimension
        tableView?.tableFooterView = UIView()
    }
    
    override func createModules() {
        super.createModules()
        
        loadAppModule()
    }
}

// MARK: - Private Methods
private extension MainViewController {
    func loadAppModule() {
        let appModule = AppModule(tableView: tableView!)
        appModule.delegate = self
        appendModule(appModule)
    }
}

//MARK: - AppModuleDelegate
extension MainViewController: AppModuleDelegate {
    func appSelected(_ appInformation: GenericAppInformation?) {
        
        let viewcontroller : UIViewController
        switch appInformation!.app {
        case .facebook:
            viewcontroller = FacebookViewController()
        case .whatsapp:
            viewcontroller = WhatsappViewController()
        case .potpurri:
            viewcontroller = PotpurryViewController()
        case .playground:
            viewcontroller = PlaygroundViewController()
        }
        
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
}
