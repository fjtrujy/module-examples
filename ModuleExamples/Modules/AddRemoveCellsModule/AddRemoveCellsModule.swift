//
//  AddRemoveCellsModule.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 02/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import ModulesKit
import UIKit

private enum RowType {
    case addRow
    case removeRow
    case normal
}

class AddRemoveCellsModule: TableSectionModule {
    
    override func registerClassForHeadersFooters() -> [AnyClass] {
        super.registerClassForHeadersFooters() + [
            UITableViewHeaderFooterView.classForCoder(),
        ]
    }
    
    override func registerClassForCells() -> [AnyClass] {
        super.registerClassForCells() + [
            UITableViewCell.classForCoder(),
        ]
    }
    
    override func createRows() {
        super.createRows()
        
        rows.append(RowType.addRow)
        rows.append(RowType.removeRow)
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let identifier = String(describing: UITableViewHeaderFooterView.self)
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier:identifier)
        header?.textLabel?.text = "Add/Remove cells module"
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: UITableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        if let rowType = rows[indexPath.row] as? RowType {
            switch rowType {
            case .addRow:
                cell.textLabel?.text = "Click to add new row"
            case .removeRow:
                cell.textLabel?.text = "Click to remove new row"
            default:
                cell.textLabel?.text = "Index:" + String(indexPath.row) + " - Click to do nothing"
            }
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        if let rowType = rows[indexPath.row] as? RowType {
            switch rowType {
            case .addRow:
                addRow()
            case .removeRow:
                removeRow()
            default: break
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - Private Methods
private extension AddRemoveCellsModule {
    func addRow() {
        let indexPath = IndexPath(row: rows.count, section: section)
        rows.append(RowType.normal)
        
        tableView.insertRows(at: [indexPath], with: UITableView.RowAnimation.right)
    }
    
    func removeRow() {
        guard let rowType = rows.last as? RowType, rowType == .normal else { return }
        
        rows.removeLast()
        let indexPath = IndexPath(row: rows.count, section: section)
        tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.left)
    }
}
