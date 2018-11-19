//
//  WhatsappStateModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class WhatsappStateModule: TableSectionModule {
    private var decorator : WhatsappStateModuleDecorator?
    
    func configure(decorator : WhatsappStateModuleDecorator) {
        self.decorator = decorator
    }
    
    override func registerClassForHeadersFooters() -> [AnyClass] {
        return super.registerClassForHeadersFooters() + [
            UITableViewHeaderFooterView.classForCoder(),
        ]
    }
    
    override func registerNibsForCells() -> [AnyClass] {
        return super.registerNibsForCells() + [
            WhatsappStatusCell.classForCoder(),
        ]
    }
    
    override func createRows() {
        super.createRows()
        
        if (decorator != nil) {
            rows = rows + decorator!.rows!
        }
        
        self.reload
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 50;
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20;
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let identifier = String(describing: UITableViewHeaderFooterView.self)
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: identifier)
        
        header?.textLabel?.text = decorator?.headerTitle
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell : WhatsappStatusCell
        let identifier = String(describing: WhatsappStatusCell.self)
        cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! WhatsappStatusCell
        
        let cellDecorator = decorator?.rows![indexPath.row]
        cell.configure(decorator: cellDecorator!)
        
        return cell
    }
}
