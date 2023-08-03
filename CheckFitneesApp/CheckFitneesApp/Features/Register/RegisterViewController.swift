//
//  RegisterVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/18/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var screen: RegisterScreen?
    var viewModel: RegisterViewModel = RegisterViewModel()
    var alert: Alert?
    
    override func loadView() {
        screen = RegisterScreen()
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
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        viewModel.configButtonOn(name: screen?.nameTextField.text ?? "", email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "", confirmPassword: screen?.confirmPasswordTextField.text ?? "")
    }
}

//MARK: - RegisterScreenProtocol

extension RegisterViewController: RegisterScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionSingUpButton() {
        viewModel.checkEmailFirebase(email: screen?.emailTextField.text ?? "")
        viewModel.creatDadosUser(name: screen?.nameTextField.text ?? "", email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "")
    }
}

//MARK: - UITextFieldDelegate

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        viewModel.configButtonOn(name: screen?.nameTextField.text ?? "", email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "", confirmPassword: screen?.confirmPasswordTextField.text ?? "")
        viewModel.divergentsPassword(password: screen?.passwordTextField.text ?? "", confirmPassword: screen?.confirmPasswordTextField.text ?? "")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true 
    }
}

//MARK: - RegisterViewModelProtocol

extension RegisterViewController: RegisterViewModelProtocol {
    func divergentsPassword() {
        screen?.errorLabel.isHidden = false
    }
    
    func samePassword() {
        screen?.errorLabel.isHidden = false
    }
    
    func buttonOn() {
        screen?.singUpButton.setTitleColor(.corTwo, for: .normal)
        screen?.singUpButton.backgroundColor = .corOne
        screen?.singUpButton.isEnabled = true
    }
    
    func buttonOf() {
        screen?.singUpButton.setTitleColor(.lightGray, for: .normal)
        screen?.singUpButton.backgroundColor = .gray
        screen?.singUpButton.isEnabled = false
    }
    
    func existingEmail() {
        screen?.errorEmailLabel.isHidden = false
    }
    
    func nonExistentEmail() {
        screen?.errorEmailLabel.isHidden = true
    }
    
    func success() {
        alert?.getAlert(titulo: "Parabens", mensagem: "Usuario cadastrado com Sucesso!", completion: {
            let vc:TabBarVC = TabBarVC()
            self.navigationController?.pushViewController(vc, animated: false)
        })
    }
    
    func error() {
        alert?.getAlert(titulo: "Atenção", mensagem: "Error ao Cadastrar, Tente Novamente!")
    }
}
