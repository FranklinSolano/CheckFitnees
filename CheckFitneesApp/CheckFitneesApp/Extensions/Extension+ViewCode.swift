//
//  ViewCode.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/17/23.
//

import UIKit

protocol ViewCode{
    func configElements()
    func configConstraint()
}

extension ViewCode {
    func setupViewCode(){
        configElements()
        configConstraint()
    }
}


