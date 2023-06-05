//
//  HomeViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/30/23.
//

import UIKit
import Firebase

protocol HomeViewModelProtocol: AnyObject {
    func succes()
    func error()
}

class HomeViewModel {
    
    weak var delegate: HomeViewModelProtocol?
    func delegate(delegate:HomeViewModelProtocol) {
        self.delegate = delegate
    }
    
    var datapopular: [PerfilModel] = []
    var userId = Auth.auth().currentUser?.uid
    var db = Firestore.firestore()
    
    var numberOfRowsInSection: Int {
        return datapopular.count
    }
    
    func fetchFirebase() {
        if !(userId?.isEmpty ?? true) {
            let docRef = Firestore.firestore().collection("cells").whereField("personal", isEqualTo: userId! )
            docRef.getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    for document in querySnapshot!.documents {
                        print("\(document.documentID) => \(document.data())")
                    }
                    let objetosArray = querySnapshot!.documents.map { element in
                        let name = element["name"]
                        let modalidade = element["modalidade"]
                        let id = element["id"]
                        let taxaMetabolica = element["taxaMetabolica"]
                        let porcentual = element["porcentual"]
                        let carb = element["carb"]
                        let proteina = element["proteina"]
                        let gordura = element["gordura"]
                        return PerfilModel(name: name as? String, modalidade:modalidade as? String, id: id as? String ?? "", taxaMetabolica: taxaMetabolica as? Double, porcentual: porcentual as? String, carb: carb as? String, proteina: proteina as? String, gordura: gordura as? String)
                    }
                    self.datapopular = objetosArray
                    self.delegate?.succes()
                }
            }
        }
    }
    
    func removeData(withId id: String) {
        db.collection("cells").document(id).delete() { err in
            if let err = err {
                print("Error removing document: \(err)")
            } else {
                print("Document successfully removed!")
            }
        }
    }
}

