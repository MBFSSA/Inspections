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
        
        _ = expectation(description: "Alamofire")
        
        let url: String = "https://jsonplaceholder.typicode.com/todos/1"
        Alamofire.request(url)
            .responseJSON { response in
                
                let json = JSON(data: response.data!)
                print(json)
                //print(response.result.value as! [String: String])
             //   completionHandler(response.result.value as! String)
        }

        waitForExpectations(timeout: 5.0, handler: nil)
    }
    
    
    
    func testPerformanceExample() {
        self.measure {
        }
    }
    
}
