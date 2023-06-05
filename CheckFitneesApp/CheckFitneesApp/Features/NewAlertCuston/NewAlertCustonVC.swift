//
//  NewAlertCustonVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol NewAlertCustonVCProtocol: AnyObject {
    func reloadTableView()
}

class NewAlertCustonVC: UIViewController {
    
    weak var delegate: NewAlertCustonVCProtocol?
    func delegate(delegate:NewAlertCustonVCProtocol) {
        self.delegate = delegate
    }
    
    var screen: NewAlertCustonScreen?
    var viewModel: NewAlertCustonViewModel = NewAlertCustonViewModel()

    override func loadView() {
        screen = NewAlertCustonScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        screen?.configButtonOn()
    }
}

//MARK: - NewAlertCustonScreenProtocol

extension NewAlertCustonVC: NewAlertCustonScreenProtocol {
    func actionBackButton() {
        dismiss(animated: true)
    }
    
    func actionAdicionarButton() {
        viewModel.savedDados(name: screen?.nameTextField.text ?? "", modalidade: screen?.modalidadeTextField.text ?? "", taxaMetabolica: "0", porcentual: "0", carb: "0", proteina: "0", gordura: "0")
        self.delegate?.reloadTableView()
        dismiss(animated: true)
    }
}

//MARK: - UITextFieldDelegate

extension NewAlertCustonVC: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        screen?.configButtonOn()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
