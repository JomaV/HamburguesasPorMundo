//
//  ViewController.swift
//  HamburguesasMundo
//
//  Created by Josep M Viladegut on 01/09/16.
//  Copyright © 2016 JViladegut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiquetaPais: UILabel!
    @IBOutlet weak var etiquetaHamburguesa: UILabel!
    
    let pais = ColeccionDePaises()
    let hamburguesa = ColeccionDeHamburguesa()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Obtiene un color aleatorio
    func getRandomColor() -> UIColor{
        
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    
    //Acción del botón "Quiero una hamburguesa!"
    @IBAction func obtenerPaisYHamburguesa(sender: AnyObject) {
        //Modifica el texto de las etiquetas
        etiquetaPais.text = pais.obtenPais()
        etiquetaHamburguesa.text = hamburguesa.obtenHamburguesa()
        
        //Modifica el color de background
        view.backgroundColor = getRandomColor();
    }

}

