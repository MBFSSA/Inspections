//
//  AuthenticationWebService.swift
//  InspectionsWebServices
//
//  Created by Ryan Johansen on 2017/02/23.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import Foundation
import InspectionsData

public class AuthenticationWebService
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
    
    
}
