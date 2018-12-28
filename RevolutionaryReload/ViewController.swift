//
//  ViewController.swift
//  RevolutionaryReload
//
//  Created by Aidan Maldonado on 12/28/18.
//  Copyright © 2018 Aidan Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Game Variables
    var mag = 0
    var magFull = 7
    var influence = 0
    var ammo = 20
    
    //Labels
    @IBOutlet weak var influenceLabel: UILabel!
    @IBOutlet weak var magLabel: UILabel!
    @IBOutlet weak var ammoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }
    
    func updateLabels() {
        influenceLabel.text = "Influence: " + String(influence)
        magLabel.text = "Mag: " + String(mag)
        ammoLabel.text = "Ammo: " + String(ammo)
    }
    
    @IBAction func shoot() {
        if mag >= 1 {
            influence += 1
            mag -= 1
        }
        updateLabels()
    }
    
    @IBAction func reload() {
        if ammo >= magFull {
            mag = magFull
            ammo -= magFull
        } else if ammo >= 1 {
            mag = ammo
            ammo = 0
        }
        updateLabels()
    }


}

