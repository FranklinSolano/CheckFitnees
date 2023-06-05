//
//  NewAlertCustonViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/30/23.
//

import UIKit
import Firebase

class NewAlertCustonViewModel {
    
    let db = Firestore.firestore()
    var userId = Auth.auth().currentUser?.uid
    
    func savedDados(name: String, modalidade: String, taxaMetabolica: String, porcentual: String,carb: String,proteina: String, gordura: String) {
        
        var cellsCollection = db.collection("cells").document()
        var datapopular = PerfilModel(name: name, modalidade: modalidade, id: cellsCollection.documentID, taxaMetabolica: taxaMetabolica, porcentual: porcentual, carb: carb, proteina: proteina, gordura: gordura)
        
        let cellData = [
            "id": cellsCollection.documentID,
                    "name": name,
                    "modalidade": modalidade,
                    "taxaMetabolica": taxaMetabolica,
                    "porcentual": porcentual,
                    "carb": carb,
                    "proteina": proteina,
                    "gordura": gordura,
            "personal": userId ?? ""
                ] as [String : Any]
        
        cellsCollection.setData(cellData)
    }
}
