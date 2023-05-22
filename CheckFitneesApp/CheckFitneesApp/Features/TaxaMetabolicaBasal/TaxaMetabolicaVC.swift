//
//  TaxaMetabolicaVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class TaxaMetabolicaVC: UIViewController {
    
    var screen: TaxaMetabolicaScreen?
    
    override func loadView() {
        screen = TaxaMetabolicaScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
}

//MARK: -

extension TaxaMetabolicaVC: TaxaMetabolicaScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCalcularButton() {
        
    }
    
    
}
