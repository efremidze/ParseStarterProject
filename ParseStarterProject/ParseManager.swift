//
//  ParseManager.swift
//  ParseStarterProject
//
//  Created by Lasha Efremidze on 5/18/15.
//  Copyright (c) 2015 Lasha Efremidze. All rights reserved.
//

import Foundation

public class ParseManager {
    
    class func pinObjectsWithValues(values: AnyObject?...) {
        for value in values {
            let object = ParseObject()
            object.value = value
            object.pin()
        }
    }
    
    class func retrieveObjects() -> [AnyObject]? {
        let query = ParseObject.query()
        query!.fromLocalDatastore()
        return query!.findObjects()
    }
    
}

class ParseObject: PFObject, PFSubclassing {
    
    @NSManaged var value: AnyObject?
    
    override class func initialize() {
        var token: dispatch_once_t = 0
        dispatch_once(&token) {
            self.registerSubclass()
        }
    }
    
    static func parseClassName() -> String {
        return NSStringFromClass(self)
    }
    
}