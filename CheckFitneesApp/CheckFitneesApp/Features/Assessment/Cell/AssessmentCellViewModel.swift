//
//  AssessmentCellViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 9/26/23.
//

import Foundation

protocol AssessmentCellViewModelProtocol: AnyObject {
    func enableButton()
    func disableButton()
}

class AssessmentCellViewModel {
    
    weak var delegate: AssessmentCellViewModelProtocol?
    func delegate(delegate: AssessmentCellViewModelProtocol){
        self.delegate = delegate
    }
    
    func enableButtonSaved(button: Bool){
        if button {
            delegate?.enableButton()
        } else {
            delegate?.disableButton()
        }
    }
}
