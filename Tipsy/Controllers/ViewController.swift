//
//  ViewController.swift
//  Tipsy
//
//  Created by Nishant Taneja on 30/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlets:- Label|TextField
    @IBOutlet weak var totalAmountTextField: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    // IBOutlets:- Tip Buttons
    @IBOutlet weak var tipZeroButton: UIButton!
    @IBOutlet weak var tipTenButton: UIButton!
    @IBOutlet weak var tipTwentyButton: UIButton!
    // IBActions
    @IBAction func tipSelected(_ sender: UIButton) {}
    @IBAction func splitStepperValueChanged(_ sender: UIStepper) {}
    @IBAction func calculatePressed(_ sender: UIButton) {}
}

