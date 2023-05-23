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
        let vc:HomeVC = HomeVC()
        self.navigationController?.pushViewController(vc, animated: false)
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
        
    }
    
    func actionDietaFlexivelButton() {
        
    }
    
    func actionDietaAvancadaButton() {
        
    }
    
    func actionVolumeTreinoButton() {
        
    }
    
    
}
