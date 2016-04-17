//
//  InterfaceController.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Administrador on 15/04/16.
//  Copyright © 2016 ITESO. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    //Switch
    @IBOutlet var chica: WKInterfaceSwitch!
    @IBOutlet var mediana: WKInterfaceSwitch!
    @IBOutlet var grande: WKInterfaceSwitch!
    
    @IBOutlet var delgada: WKInterfaceSwitch!
    @IBOutlet var crujiente: WKInterfaceSwitch!
    @IBOutlet var gruesa: WKInterfaceSwitch!
    
    @IBOutlet var mozarela: WKInterfaceSwitch!
    @IBOutlet var cheddar: WKInterfaceSwitch!
    @IBOutlet var parmesano: WKInterfaceSwitch!
    @IBOutlet var sinQueso: WKInterfaceSwitch!
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!

   
    var tamaño = ""
    var masa = ""
    var queso = ""
    var ingredientes = ""
    
    @IBAction func elegirChica(value: Bool) {
        self.mediana.setOn(false)
        self.grande.setOn(false)
        tamaño = "Chica"
    }
    
    @IBAction func elegirMediana(value: Bool) {
        self.chica.setOn(false)
        self.grande.setOn(false)
        tamaño = "Mediana"
    }
    
    @IBAction func elegirGrande(value: Bool) {
        self.chica.setOn(false)
        self.mediana.setOn(false)
        tamaño = "Grande"
    }
    
    
    @IBAction func elegirDelgada(value: Bool) {
        self.crujiente.setOn(false)
        self.gruesa.setOn(false)
        masa = "Delgada"
    }
    
    @IBAction func elegirCrujiente(value: Bool) {
        self.delgada.setOn(false)
        self.gruesa.setOn(false)
        masa = "Crujiente"
    }
    
    @IBAction func elegirGruesa(value: Bool) {
        self.delgada.setOn(false)
        self.crujiente.setOn(false)
        masa = "Gruesa"
    }

    @IBAction func elegirMozarela(value: Bool) {
        self.cheddar.setOn(false)
        self.parmesano.setOn(false)
        self.sinQueso.setOn(false)
        queso = "Mozarela"
    }
    
    @IBAction func elegirCheddar(value: Bool) {
        self.mozarela.setOn(false)
        self.parmesano.setOn(false)
        self.sinQueso.setOn(false)
        queso = "Cheddar"
    }
    
    @IBAction func elegirParmesano(value: Bool) {
        self.mozarela.setOn(false)
        self.cheddar.setOn(false)
        self.sinQueso.setOn(false)
        queso = "Parmesano"
    }
    
    @IBAction func elegirSinQueso(value: Bool) {
        self.mozarela.setOn(false)
        self.cheddar.setOn(false)
        self.parmesano.setOn(false)
        queso = "Sin Queso"
    }

    @IBAction func elegirJamon(value: Bool) {
        ingredientes += "Jamon\n"
    }
    
    @IBAction func elegirPepperoni(value: Bool) {
        ingredientes += "Pepperoni\n"
    }
    
    @IBAction func elegirPavo(value: Bool) {
        ingredientes += "Pavo\n"
    }
    
    @IBAction func elegirSalchicha(value: Bool) {
        ingredientes += "Salchicha\n"
    }
    
    @IBAction func elegirPiña(value: Bool) {
        ingredientes += "Piña\n"
    }

    
    @IBAction func confirmarPizza() {
        let valorContexto = Cocina(t: tamaño, m: masa, q: queso, i: ingredientes)
        print(tamaño + "confirmar")
        limpiarIngredientes()
        pushControllerWithName("IdentificadorCocina", context: valorContexto)
    }
    
    func limpiarIngredientes(){
        ingredientes = ""
        self.jamon.setOn(false)
        self.pepperoni.setOn(false)
        self.pavo.setOn(false)
        self.salchicha.setOn(false)
        self.piña.setOn(false)
        
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        //self.chica.setOn(true)
        
        //PUedoo hacer un if donde al picarle a cierto boton se obtenga un ID y  así poder hacer la instancia 
        
    }
    
    /*func switchChanged(mySwitch: UISwitch) {
        //let value = mySwitch.on
        // Do something
        chica.setOn(true)
    }*/

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
