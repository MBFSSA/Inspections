//
//  LolcaPersistenceTest.swift
//  MbInspections
//
//  Created by Ryan Johansen on 2017/02/26.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import XCTest

class LolcaPersistenceTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStore1() {
        
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(20, forKey: "Age")
        
        
        
        
         }
    
    
    func testGet() {
        
        
        let userDefaults = UserDefaults.standard
        var age: Int = userDefaults.integer(forKey: "Age")
        print("Age is " + String(age))
        
        
        
    }
    
    
    
}
