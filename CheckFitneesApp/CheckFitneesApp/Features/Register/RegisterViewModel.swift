//
//  RegisterViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/29/23.
//

import UIKit
import Firebase

protocol RegisterViewModelProtocol: AnyObject {
    func sucess()
    func error()
}

class RegisterViewModel{
    
    weak var delegate: RegisterViewModelProtocol?
    func delegate(delegate: RegisterViewModelProtocol){
        self.delegate = delegate
    }
    var db = Firestore.firestore()
    
    func creatDadosUser(name: String, email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                self.delegate?.error()
            } else {
                self.savedDadosUser(email: email, name: name, id: result?.user.uid ?? "")
                self.delegate?.sucess()
            }
        }
    }
    
    func savedDadosUser(email: String, name: String, id: String){
        let dataPath = "users/\(id)"
        let docRef = db.document(dataPath)
        docRef.setData([
            "name": name,
            "email": email
        ])
        
        self.creatCollection(id: id)
    }
    
    func checkEmailFirebase(email: String, label: UILabel) {
        Auth.auth().fetchSignInMethods(forEmail: email) { (methods, error) in
            if let error = error {
            } else if let methods = methods {
                if !methods.isEmpty {
                    label.isHidden = false
                }
            } else {
                label.isHidden = true
            }
        }
    }
    
    
    func creatCollection(id:String){
//        let dataPath = "Cells/\(id)"
//        let docRef = db.collection(<#T##collectionPath: String##String#>)
//        docRef.setData([
//            "cells": ""
//            ])
        }
    
}
