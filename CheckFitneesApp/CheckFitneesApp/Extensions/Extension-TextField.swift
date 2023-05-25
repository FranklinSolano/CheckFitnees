//
//  Extension-TextField.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/24/23.
//

import UIKit


extension UITextField {
    // MARK: deixar a borda no textField
    func setBottomBorder(){
        self.layer.shadowColor = UIColor.corOne.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
    func setBottomBorder2(){
        self.layer.shadowColor = UIColor.corTwo.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}
