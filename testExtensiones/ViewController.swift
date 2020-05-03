//
//  ViewController.swift
//  testExtensiones
//
//  Created by junior on 4/29/20.
//  Copyright © 2020 junior. All rights reserved.
//

import UIKit

// anteriormente para trabajar con tables, se ponian los protocolos uitabledelegete, uitabledatsouce,ahora se ocupan las extensiones, ver abajo
class ViewController: UIViewController {
    
    // creando un arreglo
    let items = [["title": "IPHones", "rutaImagen:":"https://api.opendota.com/apps/dota2/images/heroes/antimage_full.png?"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// al utilizar extensiones es una forma ordenada de estructuras funciones propias
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // funcioens basicas de las tables
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // poner un identificador en la celda
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! UITableViewCell
        
        // llamando a las propiedades mediante su tag
        let imagen = cell.viewWithTag(1) as! UIImageView
        let titulo = cell.viewWithTag(2) as! UILabel
        
        // trallendo el diccionario de arreglos
        titulo.text = items[indexPath.row]["title"]
        return cell
    }

}

// extension para las imagnes

extension UIImageView {
 
}

