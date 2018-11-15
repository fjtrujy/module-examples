//
//  AppModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 14/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class AppModule: TableSectionModule {
    weak var delegate: AppModuleDelegate?
    
    private var info : AppModuleModel
    
    override init(tableView: UITableView) {
        info = AppModuleModel()
        
        super.init(tableView: tableView)
    }
    
    override func registerClassForHeadersFooters() -> [AnyClass] {
        return super.registerClassForHeadersFooters() + [UITableViewHeaderFooterView.classForCoder()]
    }

    override func registerClassForCells() -> [AnyClass] {
        return super.registerClassForCells() + [UITableViewCell.classForCoder()]
    }
    
    override func createRows() {
        super.createRows()
        
        self.rows.append(contentsOf: info.apps)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let className = String(describing: UITableViewHeaderFooterView.self)
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: className)
        
        header?.textLabel?.text = info.appsDescription
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let className = String(describing: UITableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: className, for: indexPath)
        
        let appInfo = info.apps[indexPath.row]
        
        cell.textLabel?.text = appInfo.appName
        cell.imageView?.image = appInfo.appIcon
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30//UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        let appInfo = info.apps[indexPath.row]
        
        delegate?.appSelected(appInfo)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

//MARK: ApppModuleDelegate
protocol AppModuleDelegate: class {
    func appSelected(_ app: GenericAppInformation?)
}
