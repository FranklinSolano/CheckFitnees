//
//  PorcentualViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/21/23.
//

import Foundation

protocol PercentageViewModelProtocol: AnyObject {
    func validateFields()
}

 final class PercentageViewModel  {
     
     weak var delegate: PercentageViewModelProtocol?
     func delegate(delegate: PercentageViewModelProtocol){
         self.delegate = delegate
     }

     func validateFields(triceps: String, breastplate: String, middleAuxiliary: String, suprailiac: String, subscapular: String, thigh: String, abdominal: String){
         
         if triceps.isEmpty && breastplate.isEmpty && middleAuxiliary.isEmpty && suprailiac.isEmpty && subscapular.isEmpty && thigh.isEmpty && abdominal.isEmpty {
             self.delegate?.validateFields()
         }
         
         
     }
    
}
