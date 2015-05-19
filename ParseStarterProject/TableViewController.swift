//
//  TableViewController.swift
//  ParseStarterProject
//
//  Created by Lasha Efremidze on 5/18/15.
//  Copyright (c) 2015 Lasha Efremidze. All rights reserved.
//

import Foundation

class TableViewController: PFQueryTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textKey = "value"
    }
        
    override func queryForTable() -> PFQuery {
        let query = ParseObject.query()
        query!.fromLocalDatastore()
        return query!
    }
    
}