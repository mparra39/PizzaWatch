//
//  Pizza.swift
//  PizzaWatch
//
//  Created by Administrador on 17/04/16.
//  Copyright © 2016 ITESO. All rights reserved.
//

import WatchKit
import Foundation

class Pizza: NSObject {
    
    var id:Int = 0
    var resultado:String = ""
    
    
    init(i: Int, r: String) {
        id = i
        resultado = r
    }
   
    
}