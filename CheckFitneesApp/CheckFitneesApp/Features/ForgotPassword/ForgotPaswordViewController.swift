//
//  ForgotPaswordVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/18/23.
//

import UIKit

 final class ForgotPaswordViewController: UIViewController {
    
    var screen: ForgotPasswordScreen?
    var viewModel: ForgotPasswordViewModel = ForgotPasswordViewModel()
    var alert: Alert?
    
    override func loadView() {
        screen = ForgotPasswordScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
        viewModel.delegate(delegate: self)
        alert = Alert(controller: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewModel.configButtonOn(email: screen?.emailTextField.text ?? "")
    }
}

//MARK: - ForgotPasswordScreenProtocol

extension ForgotPaswordViewController: ForgotPasswordScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionEnterButton() {
        viewModel.checkEmailFirebase(email: screen?.emailTextField.text ?? "")
    }
}

//MARK: - UITextFieldDelegate

extension ForgotPaswordViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        viewModel.configButtonOn(email: screen?.emailTextField.text ?? "")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//MARK: - ForgotPasswordViewModelProtocol

extension ForgotPaswordViewController: ForgotPasswordViewModelProtocol {
    func emailDoesNotExist() {
        screen?.errorEmailLabel.isHidden = false
    }
    
    func buttonOn() {
        screen?.enterButton.setTitleColor(.secondaryColor, for: .normal)
        screen?.enterButton.backgroundColor = .primaryColor
        screen?.enterButton.isEnabled = true
    }
    
    func buttonOf() {
        screen?.enterButton.setTitleColor(.lightGray, for: .normal)
        screen?.enterButton.backgroundColor = .gray
        screen?.enterButton.isEnabled = false
    }
    
    
    func success() {
        screen?.errorEmailLabel.isHidden = true
        self.alert?.getAlert(titulo: "Sucesso", mensagem: "Link para redefinar a senha enviado!", completion: {
            self.dismiss(animated: true)
        })
    }
    
    func error() {
        self.alert?.getAlert(titulo: "Atenção", mensagem: "Erro ao verificar email. Tente novamente!")
    }

}
