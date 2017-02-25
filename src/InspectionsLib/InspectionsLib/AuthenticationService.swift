//
//  AuthenticationService.swift
//  InspectionsLib
//
//  Created by Ryan Johansen on 2017/02/22.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//

import Foundation
import InspectionsData
import InspectionsWebServices

public class AuthenticationService: AuthenticationServiceProtocol
{
    public func forgotPassword(email: String, completionHandler: @escaping  (String) -> Void)  {
        return AuthenticationWebService().forgotPassword(email: email, completionHandler:  forgotPasswordComplete)
    }
    
    func forgotPasswordComplete(res : String) -> Void{
        print(res)
    }

    
    
    public init() {}
    
    public func authenticateUser(email: String , password: String) throws -> User {
        
            var user =  try AuthenticationWebService().authenticateUser(email: email, password: password)
            return user
        
    }
    
    
}

