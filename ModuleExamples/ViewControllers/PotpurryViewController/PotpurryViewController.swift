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
        
        helloWorldModule()
        foldUnfoldModule()
        pushVCModule()
        addRemoveModule()
        attributedModule()
    }
    
    func helloWorldModule() {
        let module = HelloWorldModule(tableView: tableView!)
        module.delegate = self
        appendModule(module)
    }

    func foldUnfoldModule() {
        appendModule(FoldUnfoldModule(tableView: tableView!))
    }
    
    func pushVCModule() {
        let module = PushVCModule(tableView: tableView!)
        module.delegate = self
        appendModule(module)
    }
    
    func addRemoveModule() {
        appendModule(AddRemoveCellsModule(tableView: tableView!))
    }
    
    func attributedModule() {
        appendModule(AttributedModule(tableView: tableView!))
    }
}

//MARK: - Modules delegate
extension PotpurryViewController : PushVCModuleDelegate, HelloWorldDelegate {
    func pushVCModuleRequestPush(_ pushVCModule: PushVCModule) {
        navigationController?.pushViewController(PotpurryViewController(), animated: true)
    }
    
    //MARK: - HelloWorldModuleDelegate
    func helloWorldSelected(_ module: HelloWorldModule!) {
        let alertDesc = "Module " + module.description + " Section " + String(module.section)
        let alertVC = UIAlertController(title: "Hello World! Module",
                                        message: alertDesc,
                                        preferredStyle: UIAlertController.Style.alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }
}
