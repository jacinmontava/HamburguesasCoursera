//
//  Datos.swift
//  Hamburguesas
//
//
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises: [String] = ["España", "Argentina", "Alemania", "Mexico", "Afghanistan", "Andorra", "Australia", "Brasil", "Costa Rica", "Egipto",  "Guinea-Bissau", "Jamaica", "Madagascar", "Nepal", "Nicaragua", "Noruega", "Rusia", "South Africa", "Venezuela", "Zimbabwe"];
    
    func obtenPais() -> String {
        let aleatorio = Int(arc4random()) % paises.count
        return paises[aleatorio]
    }
}

class ColeccionDeHamburguesas {
    let hamburguesas: [String] = ["con queso", "baicon y queso", "triple", "HH", "hot picante", "doble con huevo", "completa", "BBQ", "mixta", "de pollo", "vegetal", "con patatas", "de buey", "de avestruz", "tres salsas", "kebap", "marinera", "exotica", "light", "4 quesos"];
    
    func obtenHamburguesa() -> String {
        let aleatorio = Int(arc4random()) % hamburguesas.count
        return "Hamburguesa \(hamburguesas[aleatorio])"
    }
    
    func precioAleatorio() -> String {
        let arc4randoMax:Double = 0x100000000
        let upper = 15.0
        let lower = 5.0
        let ab = Double((Double(arc4random()) / arc4randoMax) * (upper - lower) + lower)
        
        return String(format:"%.2f", ab)
    }
}

class Colores {
    let colores = [UIColor(red:210/255, green:90/255, blue:45/255, alpha:1), UIColor(red:90/255, green:90/255, blue:45/255, alpha:1), UIColor(red:45/255, green:210/255, blue:90/255, alpha:1), UIColor(red:120/255, green:56/255, blue:200/255, alpha:1)]
    
    func colorAleatorio() -> UIColor {
        let aleatorio = Int(arc4random()) % colores.count
        return colores[aleatorio]
    }
}