//
//  NewAlertCustonViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/30/23.
//

import Firebase

protocol NewAlertCustonViewModelProtocol: AnyObject {
    func buttonOn()
    func buttonOf()
}

final class NewAlertCustonViewModel {
    
    weak var delegate: NewAlertCustonViewModelProtocol?
    func delegate(delegate: NewAlertCustonViewModelProtocol) {
        self.delegate = delegate
    }
    
    let db = Firestore.firestore()
    var userId = Auth.auth().currentUser?.uid
    
    public func savedDados(name: String, modalidade: String, taxaMetabolica: Double, porcentual: String,carb: String,proteina: String, gordura: String) {
        
        let cellsCollection = db.collection("cells").document()
        _ = ProfileModel(name: name, modality: modalidade, id: cellsCollection.documentID, basalMetabolicRate: taxaMetabolica, percentage: porcentual, carbohydrates: carb, protein: proteina, fat: gordura)
        
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
    
    func configButtonOn(name: String, modality: String, age: String, height: String, weight: String, email: String){
        if !name.isEmpty && !modality.isEmpty && !age.isEmpty && !height.isEmpty && !weight.isEmpty && !email.isEmpty {
            self.delegate?.buttonOn()
        } else {
            self.delegate?.buttonOf()
        }
    }
    
}
