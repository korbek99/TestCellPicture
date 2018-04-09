//
//  TableViewController.swift
//  cellFun
//
//  Created by Jose David Bustos H on 01-04-18.
//  Copyright © 2018 Jose David Bustos H. All rights reserved.
//

import UIKit

var pets = ["Electro y Tecnología",
            "Decohogar",
            "Dormitorio",
            "Deportes",
            "Niños",
            "Moda Mujer",
            "Moda Hombre",
            "Zapatos",
            "Belleza",
            "Accesorios"]

var petDesc = ["Telefonos,TV,Computacion,Fotografia",
               "Muebles,Living,Comedores,Sala de estar",
               "Camas,Ropa de Capas,Colchones",
               "Ropa Hombre Deporte,Ropa Mujer Deporte,Niños,Marcas Importantes",
               "Coches,Mundo Bebe, Vestuario Niños ,Juguetes",
               "Ropa Mujer , Ropa Juvenil, Maquillaje ,Jeans",
               "Ropa Hombre ,Ropa Juvenil,Jeans",
               "Zapatos Hombres y Mujers,Zapatos Niños y bebes" ,
               "Perfumes,Maquillaje,Cremas",
               "Joyas,Relojes,Lentes,Gafas de Sol,Mochilas y Carteras"]
var myIndex = 0

class TableViewController: UITableViewController {

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = pets[indexPath.row]
        
       // cell.textLabel?.textColor

        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
