//
//  TableViewController.swift
//  cellFun
//
//  Created by Jose David Bustos H on 01-04-18.
//  Copyright © 2018 Jose David Bustos H. All rights reserved.
//

import UIKit

var pets = ["Bulma", "Kagome", "Winry","Shampoo" ,"Kotonoha"]
var petDesc = ["Bulma es un personaje de la serie de manga y anime Dragon Ball. Bulma inicia la búsqueda de las Dragon Balls en el primer capítulo de la serie ya que desea encontrar un novio", "Kagome Higurashi es un personaje de ficción de la serie de anime y manga Inuyasha, creada por Rumiko Takahashi", "Winry Rockbell es un personaje del anime y manga Fullmetal Alchemist Es amiga de la infancia de los hermanos Elric, de la misma edad de Ed.","es una guerrera amazona y un personaje de procedencia China de la serie Ranma ½ del manga/anime de Rumiko Takahashi","Katsura Kotonoha es un personaje ficticio de la novela School Days y posterior adaptación anime"]
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

        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
