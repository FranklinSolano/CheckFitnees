//
//  PorcentualMulherVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class PorcentualMulherVC: UIViewController {
    
    var screen: PorcentualMulherScreen?
    
    override func loadView() {
        screen = PorcentualMulherScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)

    }

}

//MARK: -

extension PorcentualMulherVC: PorcentualMulherScreenProtocol {
    func actionBackButton() {
        let vc:CalculadorasVC = CalculadorasVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionHomemButton() {
        self.navigationController?.popViewController(animated: false)
    }
    
    func actionCalcular() {
        
    }
    
    
}
