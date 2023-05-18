//
//  ViewController.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/17/23.
//

import UIKit

class LoginVC: UIViewController {
    
    var screen: LoginScrenn?
    
    override func loadView() {
        screen = LoginScrenn()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
}

//MARK: - LoginScreenProtocol

extension LoginVC: LoginScrennProtocol {
    func actionForgotPassword() {
//        let vc:RegisterVC = RegisterVC()
//        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionLogin() {
//        let vc:RegisterVC = RegisterVC()
//        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionRegister() {
        let vc:RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    
}

