//
//  AuthenticationServiceTest.swift
//  MbInspections
//
//  Created by Ryan Johansen on 2017/02/25.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import XCTest
//import InspectionsLib
//import InspectionsData
import InspectionsWebServices
import Alamofire
import SwiftyJSON

class AuthenticationServiceTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testForgotPasswordExample() {
    
        //which authentication service will it uuse
        AuthenticationWebService().forgotPassword(email: "ryan.johansen@gmail.com", completionHandler: forgotPasswordComplete)
        
        
    }
    
    func forgotPasswordComplete(res : String) -> Void{
        print(res)
    }
    

    func testDirectService() {
        
        
        let url: String = "https://jsonplaceholder.typicode.com/todos/1"
        Alamofire.request(url)
            .responseJSON { response in
                
                
                print(response.result.value as! String)
             //   completionHandler(response.result.value as! String)
        }

    }
    
    
    
    func testPerformanceExample() {
        self.measure {
        }
    }
    
}
