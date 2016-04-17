//
//  Cocina.swift
//  PizzaWatch
//
//  Created by Administrador on 17/04/16.
//  Copyright © 2016 ITESO. All rights reserved.
//

import WatchKit
import Foundation

class Cocina: NSObject {

    var tamaño:String = ""
    var masa:String = ""
    var queso:String = ""
    var ingredientes:String = ""
    
    init(t: String) {
        tamaño = t
    }
    
    init(m: String) {
        masa = m
    }
    
    init(q: String) {
        queso = q
    }
    
    init(i: String) {
        ingredientes = i
    }
    
    init(t: String, m: String, q: String, i: String) {
        tamaño = t
        masa = m
        queso = q
        ingredientes = i
    }

    
}