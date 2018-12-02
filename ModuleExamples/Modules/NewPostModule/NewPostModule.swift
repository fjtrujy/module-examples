//
//  NewPostModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class NewPostModule: TableSectionModule {
    override func createRows() {
        super.createRows()
        
        rows.append(String(describing: WhatsOnYourMindCell.self) as AnyObject)
        rows.append(String(describing: NewPostActionsCell.self) as AnyObject)
    }
    
    override func registerNibsForCells() -> [AnyClass] {
        return super.registerNibsForCells() + [
            WhatsOnYourMindCell.classForCoder(),
            NewPostActionsCell.classForCoder(),
        ]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let identifier : String = rows[indexPath.row] as! String
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        // insets separator
        setupSeparatorInsetForCell(cell, forIndexPath: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        var height = super.tableView(tableView, heightForRowAtIndexPath: indexPath)
        
        let identifier : String = rows[indexPath.row] as! String
        
        switch identifier {
        case String(describing: WhatsOnYourMindCell.self):
            height = 70
        case String(describing: NewPostActionsCell.self):
            height = 40
        default: break
        }
        
        return height
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
