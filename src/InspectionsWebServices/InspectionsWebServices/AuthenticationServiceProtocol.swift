//
//  AuthenticationServiceProtocol.swift
//  InspectionsWebServices
//
//  Created by Ryan Johansen on 2017/02/24.
//  Copyright © 2017 Ryan Johansen. All rights reserved.
//
import InspectionsData
import Foundation


public protocol AuthenticationServiceProtocol
{
    func authenticateUser(email: String, password : String) throws -> User
    func forgotPassword (email: String,  completionHandler : @escaping (String) -> Void)
    
}
