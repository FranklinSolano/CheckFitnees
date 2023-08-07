//
//  PorcentualGorduraVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

final class PercentageViewController: UIViewController {

    var screen: PercentageScreen?
    var name = ""
    var alert: Alert?
    let viewModel: PercentageViewModel = PercentageViewModel()
    
    override func loadView() {
        screen = PercentageScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
        screen?.nameLabel.text = name
        alert = Alert(controller: self)
        viewModel.delegate(delegate: self)
        
    }
}

//MARK: - PorcentualHomemScreenProtocol

extension PercentageViewController: PercentageScreenProtocol {    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCalcular() {
        
    }
}

//MARK: - UITextFieldDelegate

extension PercentageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

// MARK: - PercentageViewModelProtocol

extension PercentageViewController: PercentageViewModelProtocol{
    func validateFields() {
        alert?.getAlert(titulo: "Atenção", mensagem: "Preencha os dados na Tela Avaliação Fisica para poder calcular o Porcentual de Gordura", completion: {
            self.navigationController?.popViewController(animated: true)
        })
    }
}
