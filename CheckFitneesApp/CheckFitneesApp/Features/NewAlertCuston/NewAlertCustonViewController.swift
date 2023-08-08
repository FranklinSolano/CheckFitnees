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

 final class NewAlertCustonViewController: UIViewController {
    
    weak var delegate: NewAlertCustonVCProtocol?
    func delegate(delegate:NewAlertCustonVCProtocol) {
        self.delegate = delegate
    }
    
    var screen: NewAlertCustonScreen?
    let viewModel: NewAlertCustonViewModel = NewAlertCustonViewModel()

    override func loadView() {
        screen = NewAlertCustonScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
        viewModel.delegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewModel.configButtonOn(name: screen?.nameTextField.text ?? "", modality: screen?.modalityTextField.text ?? "", age: screen?.ageTextField.text ?? "", height: screen?.heightTextField.text ?? "", weight: screen?.weightTextField.text ?? "", email: screen?.emailTextField.text ?? "")
    }
}

//MARK: - NewAlertCustonScreenProtocol

extension NewAlertCustonViewController: NewAlertCustonScreenProtocol {
    func actionBackButton() {
        dismiss(animated: true)
    }
    
    func actionAdicionarButton() {
        viewModel.savedDados(name: screen?.nameTextField.text ?? "", modalidade: screen?.modalityTextField.text ?? "", taxaMetabolica: 0, porcentual: "0", carb: "0", proteina: "0", gordura: "0")
        self.delegate?.reloadTableView()
        dismiss(animated: true)
    }
}

//MARK: - UITextFieldDelegate

extension NewAlertCustonViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        viewModel.configButtonOn(name: screen?.nameTextField.text ?? "", modality: screen?.modalityTextField.text ?? "", age: screen?.ageTextField.text ?? "", height: screen?.heightTextField.text ?? "", weight: screen?.weightTextField.text ?? "", email: screen?.emailTextField.text ?? "")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//MARK: - NewAlertCustonViewModelProtocol

extension NewAlertCustonViewController: NewAlertCustonViewModelProtocol{
    func buttonOn() {
        screen?.toAddButton.setTitleColor(.white, for: .normal)
        screen?.toAddButton.isEnabled = true
    }
    
    func buttonOf() {
        screen?.toAddButton.setTitleColor(.lightGray, for: .normal)
        screen?.toAddButton.isEnabled = false
    }
}
