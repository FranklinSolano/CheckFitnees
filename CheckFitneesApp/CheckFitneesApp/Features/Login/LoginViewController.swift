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
        screen?.configButtonOn()
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
        let vc:RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
}

//MARK: - UITextFieldDelegate

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        screen?.configButtonOn()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//MARK: - LoginViewModelProtocol

extension LoginViewController: LoginViewModelProtocol {
    func sucess() {
        let vc:TabBarVC = TabBarVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func error() {
        screen?.showErrorLabel()
    }
}

