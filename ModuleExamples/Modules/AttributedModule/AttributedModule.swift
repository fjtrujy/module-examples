//
//  AttributedModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import ModuleServices
import UIKit

class AttributedModule: TableSectionModule {
    
    override func registerNibsForCells() -> [AnyClass] {
        super.registerNibsForCells() + [
            AttributtedCell.classForCoder(),
        ]
    }
    
    override func createRows() {
        super.createRows()
        
        rows += [
            BirthdateAttributedDecorator(),
            FavoriteMusicAttributedDecorator(),
            RequestFriendsAttributedDecorator(),
            ThingsInCommonAttributedDecorator(),
        ]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: AttributtedCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if  let attributedCell = cell as? AttributtedCell,
            let decorator = rows[indexPath.row] as? CommonAttributedDecorator{
            attributedCell.configure(decorator: decorator)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
