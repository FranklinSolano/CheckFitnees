//
//  NewAlertCustonVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class NewAlertCustonVC: UIViewController {
    
    var screen: NewAlertCustonScreen?

    override func loadView() {
        screen = NewAlertCustonScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
    }
}

//MARK: - NewAlertCustonScreenProtocol

extension NewAlertCustonVC: NewAlertCustonScreenProtocol {
    func actionBackButton() {
        dismiss(animated: true)
    }
    
    func actionAdicionarButton() {
        dismiss(animated: true)
    }
}

//MARK: - UITextFieldDelegate

extension NewAlertCustonVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
