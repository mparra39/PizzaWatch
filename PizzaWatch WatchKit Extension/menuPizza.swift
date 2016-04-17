//
//  menuPizza.swift
//  PizzaWatch
//
//  Created by Administrador on 17/04/16.
//  Copyright © 2016 ITESO. All rights reserved.
//

import WatchKit
import Foundation

class menuPizza: WKInterfaceController {
    
    var tamaño = ""
    var masa = ""
    var queso = ""
    var ingredientes = ""
    
    //var context:AnyObject? = nil
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        // Configure interface objects here.
        if context != nil{
            actualizarResultados(context)
        }
    }
    
    func actualizarResultados(context: AnyObject?)
    {
        let c = context as! Pizza
        
        if c.id == 1 {
            self.tamaño = c.resultado
            print(tamaño)
        }else if c.id == 2{
            self.masa = c.resultado
            print(masa)
        }else if c.id == 3{
            self.queso = c.resultado
            print(queso)
        }else if c.id == 4{
            self.ingredientes = c.resultado
            print(ingredientes)
        }
    }
    
    
    @IBAction func confirmarPizza() {
        let valorContexto = Cocina(t: tamaño, m: masa, q: queso, i: ingredientes)
        print(tamaño + "confirmar")
        pushControllerWithName("IdentificadorCocina", context: valorContexto)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}