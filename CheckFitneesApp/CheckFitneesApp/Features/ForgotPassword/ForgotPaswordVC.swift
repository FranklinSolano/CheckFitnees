//
//  ForgotPaswordVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/18/23.
//

import UIKit

class ForgotPaswordVC: UIViewController {
    
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
        screen?.configButtonOn()
    }
}

//MARK: - ForgotPasswordScreenProtocol

extension ForgotPaswordVC: ForgotPasswordScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionEnterButton() {
        viewModel.checkEmailFirebase(email: screen?.emailTextField.text ?? "", label: screen?.errorEmailLabel ?? UILabel())
    }
}

//MARK: - UITextFieldDelegate

extension ForgotPaswordVC: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        screen?.configButtonOn()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//MARK: - ForgotPasswordViewModelProtocol

extension ForgotPaswordVC: ForgotPasswordViewModelProtocol {
    func sucess() {
        self.alert?.getAlert(titulo: "Sucesso", mensagem: "Link para redefinar a senha enviado!", completion: {
            self.dismiss(animated: true)
        })
    }
    
    func error() {
        self.alert?.getAlert(titulo: "Atenção", mensagem: "Erro ao verificar email. Tente novamente!")
    }
    
    
}
