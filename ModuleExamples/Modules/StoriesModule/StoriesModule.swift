//
//  StoriesModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 25/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import FTMTableSectionModules

class StoriesModule: TableSectionModule {
    private var storiesDataModel : StoriesDataModel?
    
    override init(tableView: UITableView) {
        super.init(tableView: tableView)
        
        fetchStories()
    }
    
    override func registerNibsForCells() -> [AnyClass] {
        return super.registerNibsForCells() + [
            StoriesTitleCell.classForCoder(),
            StoriesImageCell.classForCoder(),
        ]
    }
    
    override func createRows() {
        super.createRows()
        
        if (storiesDataModel != nil) {
            rows.append(String(describing: StoriesTitleCell.self) as AnyObject)
            rows.append(String(describing: StoriesImageCell.self) as AnyObject)
        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell
        let cellClass : String = rows[indexPath.row] as! String
        
        cell = tableView.dequeueReusableCell(withIdentifier: cellClass, for: indexPath)
        switch cellClass {
        case String(describing: StoriesImageCell.self):
            let storiesImageCell : StoriesImageCell = cell as! StoriesImageCell
            storiesImageCell.configure(dataModel: storiesDataModel!)
        default: break
        }
        
        removeSeparatorInsetForCell(cell, forIndexPath: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        var height = super.tableView(tableView, heightForRowAtIndexPath: indexPath)
        let cellClass : String = rows[indexPath.row] as! String
        
        switch cellClass {
        case String(describing: StoriesImageCell.self):
            height = 151
        default:
            height = 30
        }
        
        return height;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - Private Methods
private extension StoriesModule {
    func fetchStories() {
        //Mocking information
        guard let filePath = Bundle.main.path(forResource: "stories", ofType: "json"),
            let data = NSData(contentsOfFile: filePath) as Data?,
            let stories = try? JSONDecoder().decode(StoriesDataModel.self, from: data)
            else { return }
        
        storiesDataModel = stories
        createRows()
    }
}
