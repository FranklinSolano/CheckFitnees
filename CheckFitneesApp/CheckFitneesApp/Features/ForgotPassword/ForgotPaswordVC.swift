//
//  ForgotPaswordVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/18/23.
//

import UIKit

class ForgotPaswordVC: UIViewController {
    
    var screen: ForgotPasswordScreen?
    
    override func loadView() {
        screen = ForgotPasswordScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
    }
}

//MARK: - ForgotPasswordScreenProtocol

extension ForgotPaswordVC: ForgotPasswordScreenProtocol {
    func actionBackButton() {
        dismiss(animated: true)
    }
    
    func actionEnterButton() {
        //alert com navegacao 
    }
}

//MARK: - UITextFieldDelegate

extension ForgotPaswordVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
