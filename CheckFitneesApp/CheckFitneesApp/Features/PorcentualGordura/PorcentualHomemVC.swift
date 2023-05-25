//
//  PorcentualGorduraVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class PorcentualHomemVC: UIViewController {

    var screen: PorcentualHomemScreen?
    
    override func loadView() {
        screen = PorcentualHomemScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

//MARK: -

extension PorcentualHomemVC: PorcentualHomemScreenProtocol {
    func actionCalculoMulher() {
        let vc:PorcentualMulherVC = PorcentualMulherVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCalcular() {
        
    }
    
    
}
