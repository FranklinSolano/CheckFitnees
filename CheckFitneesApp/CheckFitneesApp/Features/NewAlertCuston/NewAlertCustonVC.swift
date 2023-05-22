//
//  NewAlertCustonVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class NewAlertCustonVC: UIViewController {
    
    var screen: NewAlertCustonScreen?

    override func loadView() {
        screen = NewAlertCustonScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
}

//MARK: -

extension NewAlertCustonVC: NewAlertCustonScreenProtocol {
    func actionBackButton() {
        dismiss(animated: false)
    }
    
    func actionAdicionarButton() {
        dismiss(animated: false)
    }
    
    
}
