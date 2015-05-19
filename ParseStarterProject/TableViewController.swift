//
//  TableViewController.swift
//  ParseStarterProject
//
//  Created by Lasha Efremidze on 5/18/15.
//  Copyright (c) 2015 Lasha Efremidze. All rights reserved.
//

import Foundation

class TableViewController: PFQueryTableViewController {
    
    override init(style: UITableViewStyle, className: String?) {
        super.init(style: style, className: className)
    }
    
    required init!(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        
        self.parseClassName = ParseObject.parseClassName()
        self.textKey = "value"
    }
    
    override func queryForTable() -> PFQuery {
        let query = ParseObject.query()
        query!.fromLocalDatastore()
        return query!
    }
    
}