//
//  WhatsappStateModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class WhatsappStateModule: TableSectionModule {
    
    override func registerNibsForCells() -> [AnyClass] {
        return super.registerNibsForCells() + [
            WhatsappStatusCell.classForCoder()
        ]
    }
    
    override func createRows() {
        super.createRows()
        
        rows.append("" as AnyObject)
        rows.append("" as AnyObject)
        rows.append("" as AnyObject)
        rows.append("" as AnyObject)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 50;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell
        let identifier = String(describing: WhatsappStatusCell.self)
        cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        return cell
    }
}
