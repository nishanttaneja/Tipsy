//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Nishant Taneja on 30/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    // IBOutlets
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    // Initialise
    var amountPerPerson: Double?
    var splitBetweenPeople: String?
    var tip: Int?
    
    // Override View Method
    override func viewDidLoad() {
        super.viewDidLoad()
        if let amountPerPerson = amountPerPerson, let splitBetweenPeople = splitBetweenPeople, let tip = tip {
            amountLabel.text = String(format: "%.1f", amountPerPerson)
            infoLabel.text = "Split between \(splitBetweenPeople) people, with \(tip)% tip."
        }
    }
    
    // IBAction
    @IBAction func recalculatePressed(_ sender: UIButton) {dismiss(animated: true, completion: nil)}
}
