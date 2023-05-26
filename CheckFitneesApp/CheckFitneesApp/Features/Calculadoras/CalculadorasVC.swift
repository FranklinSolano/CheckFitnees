//
//  CalculadorasVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class CalculadorasVC: UIViewController {
    
    var screen: CalculadorasScreen?
    
    override func loadView() {
        screen = CalculadorasScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
}

//MARK: -

extension CalculadorasVC: CalculadorasScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionTaxaMetabolicaButton() {
        let vc: TaxaMetabolicaVC = TaxaMetabolicaVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionPorcentualGorduraButton() {
        let vc:PorcentualHomemVC = PorcentualHomemVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionCicloCarboidratosButton() {
        let vc:CicloCarboidratosVC = CicloCarboidratosVC()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionDietaFlexivelButton() {
        
    }
    
    func actionDietaAvancadaButton() {
        
    }
    
    func actionVolumeTreinoButton() {
        
    }
    
    
}
