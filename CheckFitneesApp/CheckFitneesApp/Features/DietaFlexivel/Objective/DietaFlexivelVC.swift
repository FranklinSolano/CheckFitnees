//
//  DietaFlexivelVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

class DietaFlexivelVC: UIViewController {
    
    var screen: DietaFlexivelScreen?
    
    override func loadView() {
        screen = DietaFlexivelScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

//MARK: - DietaFlexivelScreenProtocol

extension DietaFlexivelVC: DietaFlexivelScreenProtocol {
    func actionGainButton() {
        
    }
    
    func actionMaintainButton() {
        
    }
    
    func actionLoseButton() {
        
    }
    
    func actionCancelButton() {
        dismiss(animated: true)
    }
    
    
}
