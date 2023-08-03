//
//  ViewController.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/17/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginScrenn?
    var viewModel: LoginViewModel = LoginViewModel()
    
    override func loadView() {
        screen = LoginScrenn()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
        viewModel.delegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        viewModel.configButtonOn(email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "")
    }
}

//MARK: - LoginScreenProtocol

extension LoginViewController: LoginScrennProtocol {
    func actionForgotPassword() {
        let vc:ForgotPaswordVC = ForgotPaswordVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionLogin() {
        viewModel.creatUserFirebase(email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "")
    }
    
    func actionRegister() {
        let vc:RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: false)
    }
}

//MARK: - UITextFieldDelegate

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        viewModel.configButtonOn(email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//MARK: - LoginViewModelProtocol

extension LoginViewController: LoginViewModelProtocol {
    func buttonOn() {
        screen?.loginButton.setTitleColor(.white, for: .normal)
        screen?.loginButton.backgroundColor = .corTwo
        screen?.loginButton.isEnabled = true
    }
    
    func buttonOf() {
        screen?.loginButton.setTitleColor(.lightGray, for: .normal)
        screen?.loginButton.backgroundColor = .gray
        screen?.loginButton.isEnabled = false
    }
    
    func success() {
        let vc:TabBarVC = TabBarVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func error() {
        screen?.errorLabel.isHidden = false
    }
}

