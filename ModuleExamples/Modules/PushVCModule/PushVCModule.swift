//
//  PushVCModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 02/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import ModulesKit
import UIKit

class PushVCModule: TableSectionModule {
    weak var delegate : PushVCModuleDelegate?
    
    override func createRows() {
        super.createRows()
        
        rows.append(String(describing: UITableViewCell.self))
    }
    
    override func registerClassForHeadersFooters() -> [AnyClass] {
        return super.registerClassForHeadersFooters() + [
            UITableViewHeaderFooterView.classForCoder(),
        ]
    }
    
    override func registerClassForCells() -> [AnyClass] {
        return super.registerClassForCells() + [
            UITableViewCell.classForCoder(),
        ]
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let identifier = String(describing: UITableViewHeaderFooterView.self)
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: identifier)
        header?.textLabel?.text = "Push VC Module"
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: UITableViewCell.classForCoder())
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = "Click to push a new VC"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        delegate?.pushVCModuleRequestPush(self)
    }
}

//MARK: - PushVCModuleDelegate
protocol PushVCModuleDelegate: class {
    func pushVCModuleRequestPush(_ pushVCModule: PushVCModule)
}
