//
//  CalculadoraViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/1/23.
//

import UIKit
import Firebase

protocol CalculadoraViewModelProtocol: AnyObject {
    func succes()
    func error()
}

class CalculadoraViewModel {
    
    
    weak var delegate: CalculadoraViewModelProtocol?
    func delegate(delegate:CalculadoraViewModelProtocol) {
        self.delegate = delegate
    }
    
    var datapopular: [Perfil] = [Perfil(title: "Avaliação Fisica", buttonGeneric: "Calcular Medidas", image: UIImage(named: "medidas"), carbo: "", proteina: "", gordura: ""),
                                 Perfil(title: "Sua Taxa Metabolica Basal é 0 Kacal", buttonGeneric: "Calcular", image: UIImage(named: "taxa"), carbo: "", proteina: "", gordura: ""),
                                 Perfil(title: "Seu porcentual de gordura é 0 %", buttonGeneric: "Calcular", image: UIImage(named: "porcentual"), carbo: "", proteina: " ", gordura: " "),
                                 Perfil(title: "Dieta Flexivel", buttonGeneric: "Calcular Dieta", image: UIImage(named: "dieta"), carbo: "Carboidratos: 0", proteina: "Proteina: 0", gordura: "Gordura: 0"),
                                 Perfil(title: "Ciclo de Carboidratos", buttonGeneric: "Calcular Carboidratos", image: UIImage(named: "ciclo"), carbo: "", proteina: "", gordura: ""),
                                 Perfil(title: "Treino", buttonGeneric: "Montar Treino", image: UIImage(systemName: "dumbbell.fill"), carbo: "", proteina: "", gordura: ""),
                                 Perfil(title: "Volume de Treino", buttonGeneric: "Calcular Volume de Treino", image: UIImage(systemName: "figure.run.square.stack.fill"), carbo: "", proteina: "", gordura: ""),
                                 Perfil(title: "Grafico Evolução", buttonGeneric: "Check Evolução", image: UIImage(named: "grafico"), carbo: "", proteina: "", gordura: "")]
    var userId = Auth.auth().currentUser?.uid
    var db = Firestore.firestore()
    var selectedCellID: CellTeste?
    
    
}
