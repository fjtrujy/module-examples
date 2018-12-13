//
//  AttributedModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class AttributedModule: TableSectionModule {
    
    override func registerNibsForCells() -> [AnyClass] {
        return super.registerNibsForCells() + [
            AttributtedCell.classForCoder(),
        ]
    }
    
    override func createRows() {
        super.createRows()
        
        rows.append(ThingsInCommonAttributedDecorator())
        rows.append(BirthdateAttributedDecorator())
        rows.append(RequestFriendsAttributedDecorator())
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let attributedCell : AttributtedCell
        let decorator = rows[indexPath.row] as! CommonAttributedDecorator
        attributedCell = tableView.dequeueReusableCell(withIdentifier: String(describing: AttributtedCell.self), for: indexPath) as! AttributtedCell
        attributedCell.configure(decorator: decorator)
        
        return attributedCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
