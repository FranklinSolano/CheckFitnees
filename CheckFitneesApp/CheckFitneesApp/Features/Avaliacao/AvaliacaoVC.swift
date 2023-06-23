//
//  AvaliacaoVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/3/23.
//

import UIKit

class AvaliacaoVC: UIViewController {
    
    var screen: AvaliacaoScreen?
    var name = ""
    
    override func loadView() {
        screen = AvaliacaoScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.nameLabel.text = name
        screen?.delegate(delegate: self)
        screen?.configTextFiled(delegate: self)
    }
    override func viewWillAppear(_ animated: Bool) {
        screen?.configSalvarDadosButton()
        
    }
}

extension AvaliacaoVC: AvaliacaoScreenProtocol {
    func actionSalvarDadosButton() {
        screen?.bloquearDados()
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension AvaliacaoVC: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        screen?.configSalvarDadosButton()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
