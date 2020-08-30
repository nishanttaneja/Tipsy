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
    @IBAction func tipSelected(_ sender: UIButton) {
        resetButtons()
        sender.modify(backgroundColor: #colorLiteral(red: 0, green: 0.9485482574, blue: 0.6213100553, alpha: 1), titleColor: .white)
    }
    @IBAction func splitStepperValueChanged(_ sender: UIStepper) {}
    @IBAction func calculatePressed(_ sender: UIButton) {}
    
    // Customise UI
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

