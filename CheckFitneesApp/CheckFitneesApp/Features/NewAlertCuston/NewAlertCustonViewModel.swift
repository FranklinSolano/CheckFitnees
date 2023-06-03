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
    
    func savedDados(name: String, modalidade: String) {
        let docRef = db.collection("Cells").document(userId ?? "")

        // Cria um identificador único (UUID)
        let uuid = UUID().uuidString
        
        // Cria um dicionário com os dados
        let cellData = [
            "id": uuid,
            "name": name,
            "modalidade": modalidade
        ]
        
        docRef.updateData([
            "cells": FieldValue.arrayUnion([cellData])
        ]) { error in
            if let error = error {
                // Trate o erro, se ocorrer
                print("Erro ao atualizar os dados: \(error.localizedDescription)")
            } else {
                // Os dados foram atualizados com sucesso
                print("Dados atualizados com sucesso")
            }
        }
    }


}
