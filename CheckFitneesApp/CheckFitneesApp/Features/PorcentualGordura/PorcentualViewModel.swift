//
//  PorcentualViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/21/23.
//

import UIKit

class PorcentualViewModel  {

    public func calcularPorcentual(triceps: String,peitoral: String,supra: String,abdominal: String, coxa: String, subescapular: String, axiliar: String, lineView: UIView){
        
        let tricepsString = triceps
        let tricepsDouble = 0.0
        let tricepsResult = Double(tricepsString) ?? tricepsDouble
        
        let peitoralString = peitoral
        let peitoralDouble = 0.0
        let peitoralResult = Double(peitoralString) ?? peitoralDouble
        
        let supraString = supra
        let supraDouble = 0.0
        let supraResult = Double(supraString) ?? supraDouble
        
        let abdomenString = abdominal
        let abdomenDouble = 0.0
        let abdomenResult = Double(abdomenString) ?? abdomenDouble
        
        let coxaString = coxa
        let coxaDouble = 0.0
        let coxaResult = Double(coxaString) ?? coxaDouble
        
        let subescapularString = subescapular
        let subescapularDouble = 0.0
        let subescapularResult = Double(subescapularString) ?? subescapularDouble
        
        let axilarString = axiliar
        let axilarDouble = 0.0
        let axilarResult = Double(axilarString) ?? axilarDouble
        
        let soma = tricepsResult + peitoralResult + supraResult + abdomenResult + coxaResult + subescapularResult + axilarResult
        
        if lineView.backgroundColor == .corOne {
            
                    }
        
        
        
    }
    
}
