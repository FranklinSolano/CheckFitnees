//
//  AssessmentViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 9/26/23.
//

import Foundation

protocol AssessmentViewModelProtocol: AnyObject {
    func enableButton()
    func disableButton()
}

class AssessmentViewModel {
    
    weak var delegate: AssessmentViewModelProtocol?
    func delegate(delegate: AssessmentViewModelProtocol){
        self.delegate = delegate
    }
    
    func enableButtonEdit(button: Bool) {
        if button {
            delegate?.enableButton()
        } else {
            delegate?.disableButton()
        }
    }
    
    
    
}
