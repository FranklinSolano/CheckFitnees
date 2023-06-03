//
//  TaxaMetabolicaBasalViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/28/23.
//

import UIKit

class TaxaMetabolicaBasalViewModel {
    
    var result = 0.0
    
    public func calcularTaxaMetabolica(textFieldPeso: String,textFieldAltura: String,textFieldIdade: String, lineView: UIView, labelTaxa: UILabel,pesoText: UITextField,alturaText: UITextField,idadeText: UITextField) {
        let pesoString = textFieldPeso
        let pesoDouble = 0.0
        let pesoResult = Double(pesoString ) ?? pesoDouble
        
        let idadeString = textFieldIdade
        let idadeDouble = 0.0
        let idadeResult = Double(idadeString ) ?? idadeDouble
        
        let alturaString = textFieldAltura
        let alturaDouble = 0.0
        let alturaResult = Double(alturaString ) ?? alturaDouble
        
        let calculoPeso = 13.7 * pesoResult
        let calculoAltura = 5.0 * alturaResult
        let calculoIdade = 6.7 * idadeResult
        
        let calculoPesoMulher = 9.6 * pesoResult
        let calculoAlturaMulher = 1.8 * alturaResult
        let calculoIdadeMulher = 4.7 * idadeResult
        
        
        if lineView.backgroundColor == .corOne {
            let calculoSoma =  66 + (calculoPeso) + (calculoAltura) - (calculoIdade)
            result = calculoSoma
        } else {
            let calculoSoma =  665 + (calculoPesoMulher) + (calculoAlturaMulher) - (calculoIdadeMulher)
            result = calculoSoma
        }
        labelTaxa.text = "Sua Taxa Metabólica Basal é \(String(format: "%.2f", result)) Kcal"
        pesoText.text = ""
        alturaText.text = ""
        idadeText.text = ""
    }
    
    }
