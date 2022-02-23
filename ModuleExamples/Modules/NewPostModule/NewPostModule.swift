//
//  NewPostModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import ModuleServices
import UIKit

class NewPostModule: TableSectionModule {
    override func createRows() {
        super.createRows()
        
        rows.append(WhatsOnYourMindCell.self)
        rows.append(NewPostActionsCell.self)
    }
    
    override func registerNibsForCells() -> [AnyClass] {
        return super.registerNibsForCells() + [
            WhatsOnYourMindCell.classForCoder(),
            NewPostActionsCell.classForCoder(),
        ]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: rows[indexPath.row])
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        // insets separator
        setupSeparatorInsetForCell(cell, forIndexPath: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        let identifier = String(describing: rows[indexPath.row])
        
        let height: CGFloat
        switch identifier {
        case String(describing: WhatsOnYourMindCell.self): height = 70
        case String(describing: NewPostActionsCell.self): height = 40
        default: height = super.tableView(tableView, heightForRowAtIndexPath: indexPath)
        }
        
        return height
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
