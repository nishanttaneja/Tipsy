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
    
    // Initialise
    var tip: Double = 0.10
    var amountPerPerson: Double = 0.0
    
    // IBActions
    @IBAction func tipSelected(_ sender: UIButton) {
        resetButtons()
        sender.modify(backgroundColor: #colorLiteral(red: 0, green: 0.9485482574, blue: 0.6213100553, alpha: 1), titleColor: .white)
        if let tipString = sender.currentTitle?.replacingOccurrences(of: "%", with: "") {
            tip = Double(tipString)!/100.0
        }
    }
    @IBAction func splitStepperValueChanged(_ sender: UIStepper) {
        splitLabel.text = String(format: "%.0f", sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        if let totalAmountString = totalAmountTextField.text {
            if let totalAmount = Double(totalAmountString) {
                amountPerPerson = (totalAmount * (1 + tip)) / Double(splitLabel.text!)!
                performSegue(withIdentifier: "DisplayResult", sender: self)
            }
        }
    }
    
    //MARK:- Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DisplayResult" {
            guard let resultVC = segue.destination as? ResultViewController else {fatalError("invalid destination")}
            resultVC.amountPerPerson = amountPerPerson
            resultVC.splitBetweenPeople = splitLabel.text
            resultVC.tip = Int(tip*100)
        }
    }
    
    //MARK:- Customise UI
    private func resetButtons() {
        tipZeroButton.modify(backgroundColor: .clear, titleColor: #colorLiteral(red: 0, green: 0.9485482574, blue: 0.6213100553, alpha: 1))
        tipTenButton.modify(backgroundColor: .clear, titleColor: #colorLiteral(red: 0, green: 0.9485482574, blue: 0.6213100553, alpha: 1))
        tipTwentyButton.modify(backgroundColor: .clear, titleColor: #colorLiteral(red: 0, green: 0.9485482574, blue: 0.6213100553, alpha: 1))
    }
}

extension UIButton {
    func modify(backgroundColor: UIColor, titleColor: UIColor) {
        self.backgroundColor = backgroundColor
        setTitleColor(titleColor, for: .normal)
    }
}

