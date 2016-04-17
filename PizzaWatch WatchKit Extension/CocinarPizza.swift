//
//  CocinarPizza.swift
//  PizzaWatch
//
//  Created by Administrador on 17/04/16.
//  Copyright © 2016 ITESO. All rights reserved.
//

import WatchKit
import Foundation

class CocinarPizza: WKInterfaceController {
    
    @IBOutlet var tamaño: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    @IBOutlet var cocinar: WKInterfaceButton!
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        if context != nil{
            actualizarResultados(context)
        }
                print("Entra")
    }
    
    func actualizarResultados(context: AnyObject?){
        
        
        let c = context as! Cocina
        
        tamaño.setText(String(c.tamaño))
        masa.setText(String(c.masa))
        queso.setText(String(c.queso))
        ingredientes.setText(String(c.ingredientes))
        
        
        print(c.tamaño)
        print(c.masa)
        print(c.queso)
        print(c.ingredientes)
        print("Entrar")
        
        if c.tamaño == "" || c.masa == "" || c.queso == "" || c.ingredientes == "" {
            
            cocinar.setEnabled(false)
        }
        
        
        
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