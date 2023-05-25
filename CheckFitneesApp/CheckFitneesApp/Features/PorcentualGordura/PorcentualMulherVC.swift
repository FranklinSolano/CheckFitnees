//
//  PorcentualMulherVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class PorcentualMulherVC: UIViewController {
    
    var screen: PorcentualMulherScreen?
    
    override func loadView() {
        screen = PorcentualMulherScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
    }

}

//MARK: - PorcentualMulherScreenProtocol

extension PorcentualMulherVC: PorcentualMulherScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: false)
    }
    
    func actionHomemButton() {
        self.navigationController?.popViewController(animated: false)
    }
    
    func actionCalcular() {
        
    }
}

//MARK: - UITextFieldDelegate

extension PorcentualMulherVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
