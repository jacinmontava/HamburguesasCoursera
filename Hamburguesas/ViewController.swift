//
//  ViewController.swift
//  Hamburguesas
//
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var etiquetaPais: UILabel!
    @IBOutlet weak var etiquetaHamburguesa: UILabel!
    @IBOutlet weak var etiquetaPrecio: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cambiarHamburguesa()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiarHamburguesa() {        
        etiquetaPais.text = paises.obtenPais()
        etiquetaHamburguesa.text = hamburguesas.obtenHamburguesa()
        etiquetaPrecio.text = "\(hamburguesas.precioAleatorio())€"
        view.backgroundColor = colores.colorAleatorio()
    }
    
    

}

