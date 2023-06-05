//
//  RegisterVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/18/23.
//

import UIKit

class RegisterVC: UIViewController {
    
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
        screen?.configButtonOn()
    }
}

//MARK: - RegisterScreenProtocol

extension RegisterVC: RegisterScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionSingUpButton() {
        viewModel.checkEmailFirebase(email: screen?.emailTextField.text ?? "", label: screen?.errorEmailLabel ?? UILabel())
        viewModel.creatDadosUser(name: screen?.nameTextField.text ?? "", email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "")
    }
}

//MARK: - UITextFieldDelegate

extension RegisterVC: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        screen?.configButtonOn()
        screen?.passwordDivergentsLabel()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true 
    }
}

//MARK: - RegisterViewModelProtocol

extension RegisterVC: RegisterViewModelProtocol {
    func sucess() {
        alert?.getAlert(titulo: "Parabens", mensagem: "Usuario cadastrado com Sucesso!", completion: {
            let vc:TabBarVC = TabBarVC()
            self.navigationController?.pushViewController(vc, animated: false)
        })
    }
    
    func error() {
        alert?.getAlert(titulo: "Atenção", mensagem: "Error ao Cadastrar, Tente Novamente!")
    }
    
    
}
