//
//  AlertTrainingViewController.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 9/2/23.
//

import UIKit

class AlertTrainingViewController: UIViewController {
    
    var screen: AlertTrainingScreen?

    override func loadView() {
        screen = AlertTrainingScreen()
        view = screen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configDelegateTextFields(delegate: self)
    }
    

}

//MARK: - AlertTrainingScreenProtocol
extension AlertTrainingViewController: AlertTrainingScreenProtocol {
    func actionToAddButton() {
        
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: false)
    }
    
}

//MARK: - UITextFieldDelegate
extension AlertTrainingViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
