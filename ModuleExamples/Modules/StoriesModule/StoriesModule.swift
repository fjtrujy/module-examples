//
//  StoriesModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 25/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import ModuleServices
import UIKit

class StoriesModule: TableSectionModule {
    private var storiesDataModel : StoriesDataModel?
    
    override init(tableView: UITableView) {
        super.init(tableView: tableView)
        
        fetchStories()
    }
    
    override func registerNibsForCells() -> [AnyClass] {
        super.registerNibsForCells() + [
            StoriesTitleCell.classForCoder(),
            StoriesImageCell.classForCoder(),
        ]
    }
    
    override func createRows() {
        super.createRows()
        
        guard storiesDataModel != nil else { return }
        
        rows += [
            StoriesTitleCell.self,
            StoriesImageCell.self,
        ]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: rows[indexPath.row])
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        guard let storiesImageCell = cell as? StoriesImageCell, let storiesDataModel = storiesDataModel else { return cell }
        storiesImageCell.configure(dataModel: storiesDataModel)
        
        removeSeparatorInsetForCell(cell, forIndexPath: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        let identifier = String(describing: rows[indexPath.row])
        
        let height: CGFloat
        switch identifier {
        case String(describing:StoriesImageCell.self): height = 151
        default: height = 30
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
