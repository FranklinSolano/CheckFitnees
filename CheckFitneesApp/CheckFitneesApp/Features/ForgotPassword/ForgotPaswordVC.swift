//
//  ForgotPaswordVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/18/23.
//

import UIKit

class ForgotPaswordVC: UIViewController {
    
    var screen: ForgotPasswordScreen?
    
    override func loadView() {
        screen = ForgotPasswordScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
}

//MARK: - ForgotPasswordScreenProtocol

extension ForgotPaswordVC: ForgotPasswordScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionEnterButton() {
        //alert com navegacao 
    }
    
    
}
