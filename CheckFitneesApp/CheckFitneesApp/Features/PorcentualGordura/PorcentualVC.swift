//
//  PorcentualGorduraVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class PorcentualVC: UIViewController {

    var screen: PorcentualScreen?
    var name = ""
    var alert: Alert?
    
    override func loadView() {
        screen = PorcentualScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
        screen?.nameLabel.text = name
        alert = Alert(controller: self)
        screen?.validacaoCamposDaTela()
    }
}

//MARK: - PorcentualHomemScreenProtocol

extension PorcentualVC: PorcentualHomemScreenProtocol {
    func validacaoCampos() {
        alert?.getAlert(titulo: "Atenção", mensagem: "Preencha os dados na Tela Avaliação Fisica para poder calcular o Porcentual de Gordura", completion: {
            self.navigationController?.popViewController(animated: true)
        })
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCalcular() {
        
    }
}

//MARK: - UITextFieldDelegate

extension PorcentualVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
