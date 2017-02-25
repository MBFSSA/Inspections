//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

func getDataFromDb(table: String, completionHandler: (String) -> Void) {
    print("Ok")
    
    
    let dbValue = "Ryan";
    completionHandler(dbValue)

}

func handleReturnValue(res: String) -> Void{
print(res)
}


getDataFromDb(table: "Stock", completionHandler: handleReturnValue)
