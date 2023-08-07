//
//  RegisterViewModel.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/29/23.
//

import UIKit
import Firebase

protocol RegisterViewModelProtocol: AnyObject {
    func success()
    func error()
    func buttonOn()
    func buttonOf()
    func nonExistentEmail()
    func existingEmail()
    func samePassword()
    func divergentsPassword()
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
                self.delegate?.success()
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
    }
    
    func checkEmailFirebase(email: String) {
        Auth.auth().fetchSignInMethods(forEmail: email) { (methods, error) in
            if error != nil {
            } else if let methods = methods {
                if !methods.isEmpty {
                    self.delegate?.existingEmail()
                }
            } else {
                self.delegate?.nonExistentEmail()
            }
        }
    }
    
    func configButtonOn(name: String, email: String, password: String, confirmPassword: String){
        if !name.isEmpty && !email.isEmpty && !password.isEmpty && !confirmPassword.isEmpty {
            self.delegate?.buttonOn()
        } else {
            self.delegate?.buttonOf()
        }
    }
    
    func divergentsPassword(password: String, confirmPassword: String) {
        if password != confirmPassword {
            self.delegate?.divergentsPassword()
        } else {
            self.delegate?.samePassword()
        }
    }
    
    
}
