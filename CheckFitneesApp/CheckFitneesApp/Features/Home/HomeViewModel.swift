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
    
    var datapopular: [CellTeste] = []
    var userId = Auth.auth().currentUser?.uid
    var db = Firestore.firestore()
    var stringTest = ""
    
    var data: [String] = []
    
    
    var numberOfRowsInSection: Int {
        return datapopular.count
    }
    
    func fetchFirebase() {
        let docRef = Firestore.firestore().collection("Cells").document(self.userId ?? "")
        
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let data = document.data()
                
                if let array = data?["cells"] as? [[String: String]] {
                    // Criar objetos com base nos elementos do array
                    let objetosArray = array.map { elemento in
                        // Acessar nome e modalidade do elemento do array
                        let name = elemento["name"]
                        let modalidade = elemento["modalidade"]
                        let id = elemento["id"]
                        
                        // Criar seu objeto usando nome e modalidade
                        return CellTeste(name: "Aluno: \(name ?? "")", modalidade: "Modalidade: \(modalidade ?? "")", id: id ?? "")
                    }
                    
                    // Popule seu array de objetos com os dados obtidos
                    self.datapopular = objetosArray
                    
                    // Chame o delegate ou realize outras ações necessárias
                    self.delegate?.succes()
                    
                }
            }
        }
    }
    
    func removeData(withId id: String) {
        let docRef = db.collection("Cells").document(userId ?? "")
        
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                var cellsArray = document.data()?["cells"] as? [[String: String]] ?? []
                cellsArray.removeAll { $0["id"] == id }
                
                docRef.updateData([
                    "cells": cellsArray
                ]) { error in
                    if let error = error {
                        // Trate o erro, se ocorrer
                        print("Erro ao remover os dados: \(error.localizedDescription)")
                    } else {
                        // Os dados foram removidos com sucesso
                        print("Dados removidos com sucesso")
                    }
                }
            }
        }
    }
}

