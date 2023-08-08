//
//  HomeViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/30/23.
//

import Firebase

protocol HomeViewModelProtocol: AnyObject {
    func success()
    func error()
}

final class HomeViewModel {
    
    weak var delegate: HomeViewModelProtocol?
    func delegate(delegate:HomeViewModelProtocol) {
        self.delegate = delegate
    }
    
    var datapopular: [ProfileModel] = []
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
                        return ProfileModel(name: name as? String, modality:modalidade as? String, id: id as? String ?? "", basalMetabolicRate: taxaMetabolica as? Double, percentage: porcentual as? String, carbohydrates: carb as? String, protein: proteina as? String, fat: gordura as? String)
                    }
                    self.datapopular = objetosArray
                    self.delegate?.success()
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

