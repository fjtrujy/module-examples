//
//  HelloWorldModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 04/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class HelloWorldModule: TableSectionModule {
    weak var delegate: HelloWorldDelegate?
    
    override func registerClassForCells() -> [AnyClass] {
        return super.registerClassForCells() + [
            UITableViewCell.classForCoder(),
        ]
    }
    
    override func createRows() {
        super.createRows()
        
        rows.append(UITableViewCell.self)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: rows[indexPath.row])
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = "Hello World from my first Module!"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        delegate?.helloWorldSelected(self)
    }
}

//MARK: - HelloWorldDelegate
protocol HelloWorldDelegate: class {
    func helloWorldSelected(_ module: HelloWorldModule!)
}
