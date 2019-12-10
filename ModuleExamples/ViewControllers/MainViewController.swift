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
        guard let app = appInformation?.app else { return }
        
        let viewcontroller: UIViewController
        switch app {
        case .Facebook:
            viewcontroller = FacebookViewController()
        case .Whatsapp:
            viewcontroller = WhatsappViewController()
        case .Potpurri:
            viewcontroller = PotpurryViewController()
        case .Playground:
            viewcontroller = PlaygroundViewController()
        }
        
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
}
