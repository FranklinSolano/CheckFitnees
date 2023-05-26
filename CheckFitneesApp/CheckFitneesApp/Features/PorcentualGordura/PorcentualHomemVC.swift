//
//  PorcentualGorduraVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class PorcentualHomemVC: UIViewController {

    var screen: PorcentualHomemScreen?
    
    override func loadView() {
        screen = PorcentualHomemScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
    }

}

//MARK: -

extension PorcentualHomemVC: PorcentualHomemScreenProtocol {
    func actionCalculoHomem() {
        screen?.lineView.backgroundColor = .corOne
        screen?.line2View.backgroundColor = .clear
    }
    
    func actionCalculoMulher() {
        screen?.lineView.backgroundColor = .clear
        screen?.line2View.backgroundColor = .corOne
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCalcular() {
        
    }
}

//MARK: - UITextFieldDelegate

extension PorcentualHomemVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
