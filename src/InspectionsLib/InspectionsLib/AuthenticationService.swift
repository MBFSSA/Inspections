//
//  AuthenticationService.swift
//  InspectionsLib
//
//  Created by Ryan Johansen on 2017/02/22.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import Foundation
import InspectionsData

public class AuthenticationService {
    
    
    public init() {}
    
    public func AuthenticateUser(email: String , password: String) throws  -> User {
        
        if email.lowercased() == "test@test.com" && password == "pa$$word" {
            
            var user = User()
    
            user.id = 1
            user.email = email
            user.firstName = "Inspector"
            user.lastName = "Gadget"
    
            user.mobileNo = "081234562"
            
            return user

        }

        throw AuthenticationError.RuntimeError("Invalid Credentials")
        
    }
    
    
}

public enum AuthenticationError : Error {
    
    case RuntimeError(String)
}
