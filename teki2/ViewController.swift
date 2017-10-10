//
//  ViewController.swift
//  Teki2
//
//  Created by Mathieu Janneau on 10/10/2017.
//  Copyright © 2017 Mathieu Janneau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Déclaration des listes de variables qui composent la phrase
    let persons = ["le Steve Jobs","le Zinedine Zidane","la Madonna","le Einstein"]
    let activities = ["du Dancefloor", "du barbecue", "de la surprise ratée", "de la raclette partie"]
    
   
    
    //Déclaration de la variable qui link le label
    @IBOutlet weak var quoteLabel: UILabel!
    // onClick Function
    @IBAction func quoteChange() {
        //Générer le nom aléatoire
        let randomIndex = Int(arc4random_uniform(UInt32(persons.count)))
        let randomVip = persons[randomIndex]
        
        //Générer l'activité aléatoire
        let randomIndex1 = Int(arc4random_uniform(UInt32(activities.count)))
        let randomActivity = activities[randomIndex1]
        
        print(randomVip)
        print(randomActivity)
        
        //Générer la phrase
        let quote = "Tu es " + randomVip + " " + randomActivity + " !"
        print(quote)
        quoteLabel.text = quote
    }
    
}

