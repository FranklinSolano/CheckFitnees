//
//  RegisterVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/18/23.
//

import UIKit

class RegisterVC: UIViewController {
    
    var screen: RegisterScreen?
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
}

//MARK: - RegisterScreenProtocol

extension RegisterVC: RegisterScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionSingUpButton() {
        //alert com navegacao
    }
    
    
}
