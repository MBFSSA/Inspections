//
//  AuthenticationWebService.swift
//  InspectionsWebServices
//
//  Created by Ryan Johansen on 2017/02/23.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import Foundation
import InspectionsData
import SwiftyJSON
import Alamofire

public class AuthenticationWebService: AuthenticationServiceProtocol
{
    
    
    
    public init(){}
    
    
    
    public func authenticateUser(email: String, password : String) throws -> User
    {
        
        var user = User()
        if email.lowercased() == "test@test.com" && password == "pa$$word" {
            
            
            
            user.id = 1
            user.email = email
            user.firstName = "Inspector"
            user.lastName = "Gadget"
            
            user.mobileNo = "081234562"
            
            return user
            
        }

        //return user;
       
        
        
        throw AuthenticationError.RuntimeError("Invalid Credentials")
    
    }
    
     public func callService(url: String, completionHandler: @escaping (Result<Any>) -> Void) {
        Alamofire.request(url)
            .responseJSON { response in
                completionHandler(response.result)
        }
    }
    
    public func forgotPassword (email: String, completionHandler: @escaping (String) -> Void)
    {
        //var arrRes = [[String:AnyObject]]() //Array of dictionary
        var res : String = ""
        
        
        let url: String = "https://jsonplaceholder.typicode.com/todos/1"
        Alamofire.request(url)
            .responseJSON { response in
                
                
                print(response.result.value as! String)
                completionHandler(response.result.value as! String)
        }
      
        
        //callService(url: todoEndpoint, completionHandler: { (result: Any) in
            
            
        //    print("Second part")
        //})
        
        
        //Alamofire.request(todoEndpoint)
        //    .responseJSON { response in
        //        guard let json = response.result.value as? [String: Any] else {
        //            print("didn't get todo object as JSON from API")
        //            print("Error: \(response.result.error)")
        //            return
        //        }
        //        print(json)
        //}
        
        
        
        
        
       // return res
        
    }
    
    
    
    
    
    
    
}
